using Abp.MultiTenancy;
using Fostor.Ginkgo.Authorization.Users;

namespace Fostor.Ginkgo.MultiTenancy
{
    public class Tenant : AbpTenant<User>
    {
        public Tenant()
        {            
        }

        public Tenant(string tenancyName, string name)
            : base(tenancyName, name)
        {
        }
    }
}
