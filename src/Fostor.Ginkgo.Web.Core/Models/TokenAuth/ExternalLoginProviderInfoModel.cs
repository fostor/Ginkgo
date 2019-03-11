using Abp.AutoMapper;
using Fostor.Ginkgo.Authentication.External;

namespace Fostor.Ginkgo.Models.TokenAuth
{
    [AutoMapFrom(typeof(ExternalLoginProviderInfo))]
    public class ExternalLoginProviderInfoModel
    {
        public string Name { get; set; }

        public string ClientId { get; set; }
    }
}
