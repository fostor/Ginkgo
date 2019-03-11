using System.Collections.Generic;
using Fostor.Ginkgo.Roles.Dto;
using Fostor.Ginkgo.Users.Dto;

namespace Fostor.Ginkgo.Web.Models.Users
{
    public class UserListViewModel
    {
        public IReadOnlyList<UserDto> Users { get; set; }

        public IReadOnlyList<RoleDto> Roles { get; set; }
    }
}
