using Abp.AspNetCore.Mvc.ViewComponents;

namespace Fostor.Ginkgo.Web.Views
{
    public abstract class GinkgoViewComponent : AbpViewComponent
    {
        protected GinkgoViewComponent()
        {
            LocalizationSourceName = GinkgoConsts.LocalizationSourceName;
        }
    }
}
