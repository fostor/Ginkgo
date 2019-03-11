using Abp.Application.Services;
using Abp.Application.Services.Dto;
using Fostor.Ginkgo.MultiTenancy.Dto;

namespace Fostor.Ginkgo.MultiTenancy
{
    public interface ITenantAppService : IAsyncCrudAppService<TenantDto, int, PagedTenantResultRequestDto, CreateTenantDto, TenantDto>
    {
    }
}

