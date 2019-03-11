using System.Collections.Generic;
using System.Threading.Tasks;
using Abp.Application.Services;
using Fostor.Ginkgo.MultiTenancy.Dto;
using Fostor.Ginkgo.Sessions.Dto;

namespace Fostor.Ginkgo.Sessions
{
    public interface ISessionAppService : IApplicationService
    {
        Task<GetCurrentLoginInformationsOutput> GetCurrentLoginInformations();
        Task<List<TenantDto>> GetAllTenants();
    }
}
