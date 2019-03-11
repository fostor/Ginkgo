using Abp.AspNetCore.Mvc.Controllers;
using Abp.IdentityFramework;
using Microsoft.AspNetCore.Identity;

namespace Fostor.Ginkgo.Controllers
{
    public abstract class GinkgoControllerBase: AbpController
    {
        public new IGinkgoAbpSession AbpSession { get; set; }
        protected GinkgoControllerBase()
        {
            LocalizationSourceName = GinkgoConsts.LocalizationSourceName;
        }

        protected void CheckErrors(IdentityResult identityResult)
        {
            identityResult.CheckErrors(LocalizationManager);
        }
    }
}
