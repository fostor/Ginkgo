using Fostor.Ginkgo.MultiTenancy.Dto;
using System.Collections.Generic;
namespace Fostor.Ginkgo.Web.Views.Shared.Components.TenantChange
{
    public class ChangeModalViewModel
    {
        public string TenancyName { get; set; }

        public IReadOnlyList<TenantDto> Tenants { get; set; }
    }
}
