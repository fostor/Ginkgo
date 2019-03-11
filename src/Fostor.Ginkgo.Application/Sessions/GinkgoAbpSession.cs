using System;
using System.Collections.Generic;
using System.Text;
using Abp.Configuration.Startup;
using Abp.MultiTenancy;
using Abp.Runtime;
using Abp.Runtime.Session;
using System.Linq;
using System.Security.Claims;

namespace Fostor.Ginkgo
{
    public class GinkgoAbpSession: ClaimsAbpSession,IGinkgoAbpSession
    {
        public GinkgoAbpSession(IPrincipalAccessor principalAccessor
           , IMultiTenancyConfig multiTenancy
           , ITenantResolver tenantResolver
           , IAmbientScopeProvider<SessionOverride> sessionOverrideScopeProvider)
            : base(principalAccessor, multiTenancy, tenantResolver, sessionOverrideScopeProvider)
        {
        }

        private string GetClaimValue(string claimType)
        {

            var claimsPrincipal = this.PrincipalAccessor.Principal;

            var claim = claimsPrincipal?.Claims.FirstOrDefault(c => c.Type == claimType);
            if (string.IsNullOrEmpty(claim?.Value))
                return null;

            return claim.Value;
        }
        public string UserName => GetClaimValue(ClaimTypes.Name);
    }

    public interface IGinkgoAbpSession : IAbpSession
    {
        string UserName { get; }
    }
}
