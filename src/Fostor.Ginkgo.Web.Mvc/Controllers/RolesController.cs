using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Abp.Application.Services.Dto;
using Abp.AspNetCore.Mvc.Authorization;
using Fostor.Ginkgo.Authorization;
using Fostor.Ginkgo.Controllers;
using Fostor.Ginkgo.Roles;
using Fostor.Ginkgo.Roles.Dto;
using Fostor.Ginkgo.Web.Models.Roles;
using System.Linq;
using System.Collections.Generic;

namespace Fostor.Ginkgo.Web.Controllers
{
    //[AbpMvcAuthorize(PermissionNames.Pages_Roles)]
    public class RolesController : GinkgoControllerBase
    {
        private readonly IRoleAppService _roleAppService;

        public RolesController(IRoleAppService roleAppService)
        {
            _roleAppService = roleAppService;
        }

        public async Task<IActionResult> Index()
        {
            var roles = (await _roleAppService.GetRolesAsync(new GetRolesInput())).Items;
            var permissions = (await _roleAppService.GetAllPermissions()).Items;
            var model = new RoleListViewModel
            {
                Roles = roles,
                Permissions = permissions
            };

            return View(model);
        }

        public async Task<ActionResult> EditRoleModal(int roleId)
        {
            var role = await _roleAppService.Get(new EntityDto(roleId));
            var permissions = (await _roleAppService.GetAllPermissions()).Items;
            //修正admin登录时,admin角色的权限缓存导致权限列表显示异常
            role.Permissions = await _roleAppService.GetRoleGrantedPermissionNames(role.Name);
            var model = new EditRoleModalViewModel
            {
                Role = role,
                Permissions = permissions,
                PermissionNodes = GetPermissionTree(permissions, role)
            };
            return View("_EditRoleModal", model);
        }

        public async Task<ActionResult> RoleMembers(int roleId)
        {
            var role = await _roleAppService.Get(new EntityDto(roleId));
            if (role != null)
            {
                ViewBag.RoleId = role.Id;
                ViewBag.RoleName = role.Name;
            }
            return View("_RoleUsersModal");
        }

        private List<PermissionNodeViewModel> GetPermissionTree(IReadOnlyList<Roles.Dto.PermissionDto> permissions, RoleDto role)
        {
            List<PermissionNodeViewModel> list = new List<PermissionNodeViewModel>();

            List<PermissionDto> listAll = new List<PermissionDto>();
            foreach (PermissionDto p in permissions)
            {
                listAll.Add(p);
            }
            var firstLevelList = listAll.FindAll(t => t.Name.Contains(".") == false);
            foreach (var p in firstLevelList)
            {
                PermissionNodeViewModel pn = new PermissionNodeViewModel { Id = p.Name, Text = p.DisplayName };
                pn.State.Checked = HasPermission(p, role);
                AddChildNode(listAll, pn, role);
                list.Add(pn);
            }

            return list;
        }

        void AddChildNode(List<PermissionDto> perms, PermissionNodeViewModel currentNode, RoleDto role)
        {
            var childList = perms.FindAll(t => t.Name.StartsWith(currentNode.Id + ".") && t.Name.Replace(currentNode.Id + ".", "").Contains(".") == false);
            foreach (var c in childList)
            {
                PermissionNodeViewModel pn = new PermissionNodeViewModel { Id = c.Name, Text = c.DisplayName };
                pn.State.Checked = HasPermission(c, role);
                AddChildNode(perms, pn, role);
                currentNode.Nodes.Add(pn);
            }
        }
        private bool HasPermission(PermissionDto permission, RoleDto role)
        {
            return role.Permissions.Any(p => p == permission.Name);
        }
    }
}
