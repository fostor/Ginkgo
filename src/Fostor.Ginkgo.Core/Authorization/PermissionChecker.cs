using Abp.Authorization;
using Fostor.Ginkgo.Authorization.Roles;
using Fostor.Ginkgo.Authorization.Users;

namespace Fostor.Ginkgo.Authorization
{
    public class PermissionChecker : PermissionChecker<Role, User>
    {
        public PermissionChecker(UserManager userManager)
            : base(userManager)
        {
        }
    }
}
