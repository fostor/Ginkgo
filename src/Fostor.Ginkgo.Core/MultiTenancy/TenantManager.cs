using Abp.Application.Features;
using Abp.Domain.Repositories;
using Abp.MultiTenancy;
using Fostor.Ginkgo.Authorization.Users;
using Fostor.Ginkgo.Editions;

namespace Fostor.Ginkgo.MultiTenancy
{
    public class TenantManager : AbpTenantManager<Tenant, User>
    {
        public TenantManager(
            IRepository<Tenant> tenantRepository, 
            IRepository<TenantFeatureSetting, long> tenantFeatureRepository, 
            EditionManager editionManager,
            IAbpZeroFeatureValueStore featureValueStore) 
            : base(
                tenantRepository, 
                tenantFeatureRepository, 
                editionManager,
                featureValueStore)
        {
        }
    }
}
