using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Abp.Application.Services;
using Abp.Application.Services.Dto;
using Abp.Authorization;
using Abp.Domain.Repositories;
using Abp.Extensions;
using Abp.IdentityFramework;
using Abp.Linq.Extensions;
using Fostor.Ginkgo.Authorization;
using Fostor.Ginkgo.Authorization.Roles;
using Fostor.Ginkgo.Authorization.Users;
using Fostor.Ginkgo.Roles.Dto;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Abp.Authorization.Users;
using Fostor.Ginkgo.Users.Dto;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.Roles
{
   // [AbpAuthorize(PermissionNames.Pages_Roles)]
    public class RoleAppService : AsyncCrudAppService<Role, RoleDto, int, PagedRoleResultRequestDto, CreateRoleDto, RoleDto>, IRoleAppService
    {
        private readonly RoleManager _roleManager;
        private readonly UserManager _userManager;
        private readonly IRepository<UserRole,long> _repoUserRole;

        public RoleAppService(IRepository<Role> repository, RoleManager roleManager, 
            UserManager userManager,
            IRepository<UserRole,long> repoUserRole)
            : base(repository)
        {
            _roleManager = roleManager;
            _userManager = userManager;
            _repoUserRole = repoUserRole;
        }

        public override async Task<RoleDto> Create(CreateRoleDto input)
        {
            CheckCreatePermission();

            var role = ObjectMapper.Map<Role>(input);
            role.SetNormalizedName();

            CheckErrors(await _roleManager.CreateAsync(role));

            var grantedPermissions = PermissionManager
                .GetAllPermissions()
                .Where(p => input.Permissions.Contains(p.Name))
                .ToList();

            await _roleManager.SetGrantedPermissionsAsync(role, grantedPermissions);

            return MapToEntityDto(role);
        }

        public async Task<ListResultDto<RoleListDto>> GetRolesAsync(GetRolesInput input)
        {
            var roles = await _roleManager
                .Roles
                .WhereIf(
                    !input.Permission.IsNullOrWhiteSpace(),
                    r => r.Permissions.Any(rp => rp.Name == input.Permission && rp.IsGranted)
                )
                .ToListAsync();

            return new ListResultDto<RoleListDto>(ObjectMapper.Map<List<RoleListDto>>(roles));
        }

        public override async Task<RoleDto> Update(RoleDto input)
        {
            CheckUpdatePermission();

            var role = await _roleManager.GetRoleByIdAsync(input.Id);

            ObjectMapper.Map(input, role);

            CheckErrors(await _roleManager.UpdateAsync(role));

            var grantedPermissions = PermissionManager
                .GetAllPermissions()
                .Where(p => input.Permissions.Contains(p.Name))
                .ToList();

            await _roleManager.SetGrantedPermissionsAsync(role, grantedPermissions);

            return MapToEntityDto(role);
        }

        public override async Task Delete(EntityDto<int> input)
        {
            CheckDeletePermission();

            var role = await _roleManager.FindByIdAsync(input.Id.ToString());
            var users = await _userManager.GetUsersInRoleAsync(role.NormalizedName);

            foreach (var user in users)
            {
                CheckErrors(await _userManager.RemoveFromRoleAsync(user, role.NormalizedName));
            }

            CheckErrors(await _roleManager.DeleteAsync(role));
        }

        public Task<ListResultDto<PermissionDto>> GetAllPermissions()
        {
            var permissions = PermissionManager.GetAllPermissions();

            return Task.FromResult(new ListResultDto<PermissionDto>(
                ObjectMapper.Map<List<PermissionDto>>(permissions)
            ));
        }

        protected override IQueryable<Role> CreateFilteredQuery(PagedRoleResultRequestDto input)
        {
            return Repository.GetAllIncluding(x => x.Permissions)
                .WhereIf(!input.Keyword.IsNullOrWhiteSpace(), x => x.Name.Contains(input.Keyword)
                || x.DisplayName.Contains(input.Keyword)
                || x.Description.Contains(input.Keyword));
        }

        protected override async Task<Role> GetEntityByIdAsync(int id)
        {
            return await Repository.GetAllIncluding(x => x.Permissions).FirstOrDefaultAsync(x => x.Id == id);
        }

        protected override IQueryable<Role> ApplySorting(IQueryable<Role> query, PagedRoleResultRequestDto input)
        {
            return query.OrderBy(r => r.DisplayName);
        }

        protected virtual void CheckErrors(IdentityResult identityResult)
        {
            identityResult.CheckErrors(LocalizationManager);
        }

        public async Task<GetRoleForEditOutput> GetRoleForEdit(EntityDto input)
        {
            var permissions = PermissionManager.GetAllPermissions();
            var role = await _roleManager.GetRoleByIdAsync(input.Id);
            var grantedPermissions = (await _roleManager.GetGrantedPermissionsAsync(role)).ToArray();
            var roleEditDto = ObjectMapper.Map<RoleEditDto>(role);

            return new GetRoleForEditOutput
            {
                Role = roleEditDto,
                Permissions = ObjectMapper.Map<List<FlatPermissionDto>>(permissions).OrderBy(p => p.DisplayName).ToList(),
                GrantedPermissionNames = grantedPermissions.Select(p => p.Name).ToList()
            };
        }

        public async Task<List<string>> GetRoleGrantedPermissionNames(string roleName)
        {
            var role = await _roleManager.GetRoleByNameAsync(roleName.ToUpper());
            var grantedPermissions = (await _roleManager.GetGrantedPermissionsAsync(role)).ToArray();
            return grantedPermissions.Select(p => p.Name).ToList();
        }

        public async Task<List<UserDto>> GetRoleUsers(string roleName)
        {
            var role = await _roleManager.GetRoleByNameAsync(roleName.ToUpper());
            if (role != null && role.Name.Length > 0)
            {
                var userIds = _repoUserRole.GetAllList(x => x.TenantId == AbpSession.TenantId && x.RoleId == role.Id);
                var users = new List<UserDto>();
                foreach (var x in userIds)
                {
                    var user = await _userManager.GetUserByIdAsync(x.UserId);
                    users.Add(user.MapTo<UserDto>());
                }
                //改变中文名字的显示方式
                foreach (var u in users)
                {
                    if (IsNonAscii(u.Name) || IsNonAscii(u.Surname))
                    {
                        u.FullName = u.Surname + u.Name;
                    }
                }
                return users;
            }
            else
            {
                return new List<UserDto>();
            }
        }

        public void AddMember(int roleId, int userId)
        {
            _repoUserRole.Insert(new UserRole
            {
                TenantId = AbpSession.TenantId,
                RoleId = roleId,
                UserId = userId,
                CreatorUserId = AbpSession.UserId,
                CreationTime = Abp.Timing.Clock.Now
            });
        }

        public void DeleteMember(int roleId, int userId)
        {
            var userRole = _repoUserRole.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.RoleId == roleId && x.UserId == userId);
            if (userRole != null)
            {
                _repoUserRole.Delete(userRole);
            }
        }

        protected bool IsNonAscii(string str)
        {
            return System.Text.RegularExpressions.Regex.IsMatch(str, @"^[^\x00-\xFF]");
        }
    }
}

