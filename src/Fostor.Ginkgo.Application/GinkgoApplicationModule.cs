using Abp.AutoMapper;
using Abp.Modules;
using Abp.Reflection.Extensions;
using Fostor.Ginkgo.Authorization;

namespace Fostor.Ginkgo
{
    [DependsOn(
        typeof(GinkgoCoreModule), 
        typeof(AbpAutoMapperModule))]
    public class GinkgoApplicationModule : AbpModule
    {
        public override void PreInitialize()
        {
            Configuration.Authorization.Providers.Add<GinkgoAuthorizationProvider>();
        }

        public override void Initialize()
        {
            var thisAssembly = typeof(GinkgoApplicationModule).GetAssembly();

            IocManager.RegisterAssemblyByConvention(thisAssembly);

            Configuration.Modules.AbpAutoMapper().Configurators.Add(
                // Scan the assembly for classes which inherit from AutoMapper.Profile
                cfg => cfg.AddProfiles(thisAssembly)
            );
        }
    }
}
