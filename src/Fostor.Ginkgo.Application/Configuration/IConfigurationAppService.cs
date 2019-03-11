using System.Threading.Tasks;
using Fostor.Ginkgo.Configuration.Dto;

namespace Fostor.Ginkgo.Configuration
{
    public interface IConfigurationAppService
    {
        Task ChangeUiTheme(ChangeUiThemeInput input);
    }
}
