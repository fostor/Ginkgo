using System.Threading.Tasks;
using Abp.Application.Services;
using Fostor.Ginkgo.Authorization.Accounts.Dto;

namespace Fostor.Ginkgo.Authorization.Accounts
{
    public interface IAccountAppService : IApplicationService
    {
        Task<IsTenantAvailableOutput> IsTenantAvailable(IsTenantAvailableInput input);

        Task<RegisterOutput> Register(RegisterInput input);
    }
}
