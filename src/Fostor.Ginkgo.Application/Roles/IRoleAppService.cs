using System.Threading.Tasks;
using Abp.Application.Services;
using Abp.Application.Services.Dto;
using Fostor.Ginkgo.Roles.Dto;
using Fostor.Ginkgo.Users.Dto;
using System.Collections.Generic;

namespace Fostor.Ginkgo.Roles
{
    public interface IRoleAppService : IAsyncCrudAppService<RoleDto, int, PagedRoleResultRequestDto, CreateRoleDto, RoleDto>
    {
        Task<ListResultDto<PermissionDto>> GetAllPermissions();

        Task<GetRoleForEditOutput> GetRoleForEdit(EntityDto input);

        Task<ListResultDto<RoleListDto>> GetRolesAsync(GetRolesInput input);
        Task<List<UserDto>> GetRoleUsers(string roleName);
        void AddMember(int roleId, int userId);
        void DeleteMember(int roleId, int userId);
        Task<List<string>> GetRoleGrantedPermissionNames(string roleName);
    }
}
