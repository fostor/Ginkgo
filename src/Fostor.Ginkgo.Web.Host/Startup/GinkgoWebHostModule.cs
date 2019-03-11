using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Abp.Modules;
using Abp.Reflection.Extensions;
using Fostor.Ginkgo.Configuration;

namespace Fostor.Ginkgo.Web.Host.Startup
{
    [DependsOn(
       typeof(GinkgoWebCoreModule))]
    public class GinkgoWebHostModule: AbpModule
    {
        private readonly IHostingEnvironment _env;
        private readonly IConfigurationRoot _appConfiguration;

        public GinkgoWebHostModule(IHostingEnvironment env)
        {
            _env = env;
            _appConfiguration = env.GetAppConfiguration();
        }

        public override void Initialize()
        {
            IocManager.RegisterAssemblyByConvention(typeof(GinkgoWebHostModule).GetAssembly());
        }
    }
}
