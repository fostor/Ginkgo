using Abp.Configuration.Startup;
using Abp.Localization.Dictionaries;
using Abp.Localization.Dictionaries.Xml;
using Abp.Reflection.Extensions;

namespace Fostor.Ginkgo.Localization
{
    public static class GinkgoLocalizationConfigurer
    {
        public static void Configure(ILocalizationConfiguration localizationConfiguration)
        {
            localizationConfiguration.Sources.Add(
                new DictionaryBasedLocalizationSource(GinkgoConsts.LocalizationSourceName,
                    new XmlEmbeddedFileLocalizationDictionaryProvider(
                        typeof(GinkgoLocalizationConfigurer).GetAssembly(),
                        "Fostor.Ginkgo.Localization.SourceFiles"
                    )
                )
            );
        }
    }
}
