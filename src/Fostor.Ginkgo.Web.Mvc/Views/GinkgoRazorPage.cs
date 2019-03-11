using Microsoft.AspNetCore.Mvc.Razor.Internal;
using Abp.AspNetCore.Mvc.Views;
using Abp.Runtime.Session;

namespace Fostor.Ginkgo.Web.Views
{
    public abstract class GinkgoRazorPage<TModel> : AbpRazorPage<TModel>
    {
        [RazorInject]       
        public IGinkgoAbpSession AbpSession { get; set; }

        protected GinkgoRazorPage()
        {
            LocalizationSourceName = GinkgoConsts.LocalizationSourceName;
        }
    }
}
