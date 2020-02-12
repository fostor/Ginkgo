using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Abp;
using Abp.Application.Navigation;
using Abp.Application.Services;
using Abp.Domain.Repositories;
using Abp.AutoMapper;
using System.Linq;
using Abp.Authorization;
using Abp.Localization;
using Fostor.Ginkgo.Sys.Dto;
using Fostor.Ginkgo.MultiTenancy;
using Abp.Application.Services.Dto;

namespace Fostor.Ginkgo.Sys
{
    public class LanguageTextAppService : GinkgoAppServiceBase, ILanguageTextAppService
    {
        private readonly IRepository<ApplicationLanguageText,long> _repository;       
        private readonly IRepository<Tenant> _repoTenant;
        public LanguageTextAppService(IRepository<ApplicationLanguageText,long> repository,
            IRepository<Tenant> repoTenant)
        {
            _repository = repository;
            _repoTenant = repoTenant;
        }

        public LanguageTextDto Create(LanguageTextDto input)
        {
            input.CreationTime = Abp.Timing.Clock.Now;
            input.CreatorUserId = AbpSession.UserId;
            input.TenantId = AbpSession.TenantId;
            return _repository.Insert(input.MapTo<ApplicationLanguageText>()).MapTo<LanguageTextDto>();            
        }

        public LanguageTextDto Update(LanguageTextDto input)
        {
            input.LastModificationTime = Abp.Timing.Clock.Now;
            input.LastModifierUserId = AbpSession.UserId;
            input.TenantId = AbpSession.TenantId;
            return _repository.Update(input.MapTo<ApplicationLanguageText>()).MapTo<LanguageTextDto>();
        }

        public int BatchCreate(string langName, string batchText)
        {
            int n = 0;
            if ((langName ?? "").Length > 0 && (batchText ?? "").Length > 0)
            {
                string[] lines = batchText.Split('\n', StringSplitOptions.RemoveEmptyEntries);
                foreach (var x in lines)
                {
                    string langKey = x.Substring(0, x.IndexOf(",")).Trim();
                    string langValue = x.Substring(x.IndexOf(",") + 1).Replace("\r", "").Trim();
                    ApplicationLanguageText langText = new ApplicationLanguageText();
                    langText.Source = GinkgoConsts.LocalizationSourceName;
                    langText.TenantId = AbpSession.TenantId;
                    langText.LanguageName = langName;
                    langText.Key = langKey;
                    langText.Value = langValue;
                    langText.CreationTime = Abp.Timing.Clock.Now;
                    langText.CreatorUserId = AbpSession.UserId;
                    _repository.Insert(langText);
                    n += 1;
                }
            }
            return n;
        }

        public void Delete(int id)
        {
            _repository.Delete(new ApplicationLanguageText { Id = id });
        }
        public LanguageTextDto Get(int id)
        {            
            return _repository.FirstOrDefault(x=>x.Id==id).MapTo<LanguageTextDto>();
        }        
        public async Task<List<LanguageTextDto>> Search(SearchLanguageTextDto input)
        {            
            var list = await _repository.GetAllListAsync(x => x.TenantId == AbpSession.TenantId
            && ((input.Source ?? "").Length > 0 ? x.Source == input.Source : 1 == 1)
            && ((input.LanguageName ?? "").Length > 0 ? x.LanguageName == input.LanguageName : 1 == 1)
            && ((input.Key ?? "").Length > 0 ? x.Key == input.Key : 1 == 1));
            return list.MapTo<List<LanguageTextDto>>();
        }
        /// <summary>
        /// 使用仓储模式不能生效，租户数据是过滤的，后续考虑改为用数据库操作
        /// </summary>
        /// <param name="sourceTenancyName"></param>
        /// <param name="targetTenancyName"></param>
        /// <returns></returns>
        public int CopyTenantLanguageText(string  sourceTenancyName,string targetTenancyName)
        {
            int n = 0;
            //var tenantS = _repoTenant.FirstOrDefault(x => x.TenancyName == sourceTenancyName);
            //var tenantT = _repoTenant.FirstOrDefault(x => x.TenancyName == targetTenancyName);
            //if(tenantS != null && tenantS.Id > 0 && tenantT != null && tenantT.Id >0)
            //{
            //    //var xx = _repository.GetAllList();
            //    var list = _repository.GetAllList(x => x.TenantId == tenantS.Id);
            //    foreach(var x in list)
            //    {
            //        var langText = new ApplicationLanguageText();
            //        langText.TenantId = tenantT.Id;
            //        langText.CreationTime = Abp.Timing.Clock.Now;
            //        langText.CreatorUserId = AbpSession.UserId;
            //        langText.Source = x.Source;
            //        langText.LanguageName = x.LanguageName;
            //        langText.Key = x.Key;
            //        langText.Value = x.Value;
            //        _repository.Insert(langText);
            //        n += 1;
            //    }
            //}
            return n;
        }
    }

    [Serializable]
    public class SearchLanguageTextDto 
    {
        public string Source { get; set; }
        public string LanguageName { get; set; }
        public string Key { get; set; }        
    }
}
