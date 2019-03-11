using System.Threading.Tasks;
using Abp.Authorization;
using Abp.Runtime.Session;
using Fostor.Ginkgo.Configuration.Dto;

namespace Fostor.Ginkgo.Configuration
{
    [AbpAuthorize]
    public class ConfigurationAppService : GinkgoAppServiceBase, IConfigurationAppService
    {
        public async Task ChangeUiTheme(ChangeUiThemeInput input)
        {
            await SettingManager.ChangeSettingForUserAsync(AbpSession.ToUserIdentifier(), AppSettingNames.UiTheme, input.Theme);
        }
    }
}
