using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Abp.Application.Services;
using Abp.IdentityFramework;
using Abp.Runtime.Session;
using Fostor.Ginkgo.Authorization.Users;
using Fostor.Ginkgo.MultiTenancy;

namespace Fostor.Ginkgo
{
    /// <summary>
    /// Derive your application services from this class.
    /// </summary>
    public abstract class GinkgoAppServiceBase : ApplicationService
    {
        public new IGinkgoAbpSession AbpSession { get; set; }
        public TenantManager TenantManager { get; set; }

        public UserManager UserManager { get; set; }

        protected GinkgoAppServiceBase()
        {
            LocalizationSourceName = GinkgoConsts.LocalizationSourceName;
        }

        protected virtual Task<User> GetCurrentUserAsync()
        {
            var user = UserManager.FindByIdAsync(AbpSession.GetUserId().ToString());
            if (user == null)
            {
                throw new Exception("There is no current user!");
            }

            return user;
        }

        protected virtual Task<Tenant> GetCurrentTenantAsync()
        {
            return TenantManager.GetByIdAsync(AbpSession.GetTenantId());
        }

        protected virtual void CheckErrors(IdentityResult identityResult)
        {
            identityResult.CheckErrors(LocalizationManager);
        }
    }
}
