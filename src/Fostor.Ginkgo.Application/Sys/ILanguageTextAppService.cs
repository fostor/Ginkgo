using System;
using System.Collections.Generic;
using System.Text;
using Abp.Application.Navigation;
using Abp.Application.Services;
using System.Threading.Tasks;
using Abp;
using Abp.Localization;
using Fostor.Ginkgo.Sys.Dto;
using Fostor.Ginkgo.MultiTenancy;
using Abp.Dependency;

namespace Fostor.Ginkgo.Sys
{
    public interface ILanguageTextAppService:IApplicationService,ITransientDependency
    {
        LanguageTextDto Create(LanguageTextDto input);
        LanguageTextDto Update(LanguageTextDto input);
        int BatchCreate(string langName, string batchText);
        void Delete(int id);
        LanguageTextDto Get(int id);
        Task<List<LanguageTextDto>> Search(SearchLanguageTextDto input);
        int CopyTenantLanguageText(string sourceTenancyName, string targetTenancyName);
    }
}
