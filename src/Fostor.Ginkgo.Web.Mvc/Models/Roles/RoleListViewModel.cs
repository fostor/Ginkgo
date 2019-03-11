using System.Collections.Generic;
using Fostor.Ginkgo.Roles.Dto;

namespace Fostor.Ginkgo.Web.Models.Roles
{
    public class RoleListViewModel
    {
        public IReadOnlyList<RoleListDto> Roles { get; set; }

        public IReadOnlyList<PermissionDto> Permissions { get; set; }
    }
}
