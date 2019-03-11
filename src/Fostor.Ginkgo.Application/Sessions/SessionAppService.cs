using System.Collections.Generic;
using System.Threading.Tasks;
using Abp.Auditing;
using Fostor.Ginkgo.Sessions.Dto;
using Fostor.Ginkgo.MultiTenancy.Dto;
using Fostor.Ginkgo.MultiTenancy;
using Abp.Domain.Repositories;

namespace Fostor.Ginkgo.Sessions
{
    public class SessionAppService : GinkgoAppServiceBase, ISessionAppService
    {
        private readonly IRepository<Tenant> _repoTenant;
        public SessionAppService(IRepository<Tenant> repoTenant)
        {
            _repoTenant = repoTenant;
        }
        [DisableAuditing]
        public async Task<GetCurrentLoginInformationsOutput> GetCurrentLoginInformations()
        {
            var output = new GetCurrentLoginInformationsOutput
            {
                Application = new ApplicationInfoDto
                {
                    Version = AppVersionHelper.Version,
                    ReleaseDate = AppVersionHelper.ReleaseDate,
                    Features = new Dictionary<string, bool>()
                }
            };

            if (AbpSession.TenantId.HasValue)
            {
                output.Tenant = ObjectMapper.Map<TenantLoginInfoDto>(await GetCurrentTenantAsync());
            }

            if (AbpSession.UserId.HasValue)
            {
                output.User = ObjectMapper.Map<UserLoginInfoDto>(await GetCurrentUserAsync());
            }

            return output;
        }
        [DisableAuditing]
        public async Task<List<TenantDto>> GetAllTenants()
        {
            List<Tenant> list = (await _repoTenant.GetAllListAsync()).FindAll(x => x.IsActive == true);
            return ObjectMapper.Map<List<TenantDto>>(list); ;
        }
    }
}
