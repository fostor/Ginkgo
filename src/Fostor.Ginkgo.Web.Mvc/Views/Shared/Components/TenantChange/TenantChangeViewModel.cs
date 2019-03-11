using Abp.AutoMapper;
using Fostor.Ginkgo.Sessions.Dto;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.TenantChange
{
    [AutoMapFrom(typeof(GetCurrentLoginInformationsOutput))]
    public class TenantChangeViewModel
    {
        public TenantLoginInfoDto Tenant { get; set; }
    }
}