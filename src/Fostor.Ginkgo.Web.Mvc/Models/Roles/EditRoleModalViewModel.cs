using Abp.AutoMapper;
using Fostor.Ginkgo.Roles.Dto;
using Fostor.Ginkgo.Web.Models.Common;
using System.Collections.Generic;
using System.Linq;

namespace Fostor.Ginkgo.Web.Models.Roles
{
    public class EditRoleModalViewModel
    {
        public RoleDto Role { get; set; }

        public IReadOnlyList<PermissionDto> Permissions { get; set; }

        public List<PermissionNodeViewModel> PermissionNodes { get; set; }

        public bool HasPermission(PermissionDto permission)
        {
            return Permissions != null && Role.Permissions.Any(p => p == permission.Name);
        }
    }
}
