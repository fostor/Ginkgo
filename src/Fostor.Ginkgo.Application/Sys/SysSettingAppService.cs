using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Abp;
using Abp.Application.Services;
using Abp.Domain.Repositories;
using Abp.AutoMapper;
using System.Linq;
using Abp.Authorization;
using Abp.Localization;
using Abp.Application.Services.Dto;
using Abp.Configuration;
using Abp.Runtime.Caching;

namespace Fostor.Ginkgo.Sys
{
    public class SysSettingAppService : GinkgoAppServiceBase,ISysSettingAppService
    {
        public ISettingStore SettingStore { get; set; }
        private readonly ITypedCache<string, Dictionary<string, SettingInfo>> _applicationSettingCache;
        private readonly ITypedCache<int, Dictionary<string, SettingInfo>> _tenantSettingCache;
        public SysSettingAppService(ICacheManager cacheManager)
        {
            SettingStore = DefaultConfigSettingStore.Instance;
            _applicationSettingCache = cacheManager.GetApplicationSettingsCache();
            _tenantSettingCache = cacheManager.GetTenantSettingsCache();
        }
        public async Task<string> GetTenantSettingValue(string name)
        {          
            string val = "";
            var list = await GetTenantAllSettings();
            foreach(var x in list)
            {
                if (x.Name == name)
                {
                    val = x.Value;
                }
            }
            return val;
        }
        public async Task<IReadOnlyList<ISettingValue>> GetTenantAllSettings()
        {
            if (AbpSession.TenantId.HasValue)
            {
                return await SettingManager.GetAllSettingValuesForTenantAsync(AbpSession.TenantId.Value);
            }
            else
            {
                return await SettingManager.GetAllSettingValuesForApplicationAsync();
            }
        }

        public async Task UpdateTenantSetting(string name, string value)
        {
            if (AbpSession.TenantId.HasValue)
            {
                await SettingStore.UpdateAsync(new SettingInfo
                {
                    TenantId = AbpSession.TenantId.Value,
                    Name = name,
                    Value = value
                });
                await _tenantSettingCache.ClearAsync();
            }
            else
            {
                await SettingStore.UpdateAsync(new SettingInfo
                {
                    Name = name,
                    Value = value
                });
                await _applicationSettingCache.ClearAsync();
            }
        }

        public async Task CreateTenantSetting(string name, string value)
        {
            if (AbpSession.TenantId.HasValue)
            {                
                await SettingStore.CreateAsync(new SettingInfo
                {
                    TenantId = AbpSession.TenantId.Value,
                    Name = name,
                    Value = value
                });
                await _tenantSettingCache.ClearAsync();
            }
            else
            {                
                await SettingStore.CreateAsync(new SettingInfo
                {                    
                    Name = name,
                    Value = value
                });
                await _applicationSettingCache.ClearAsync();
            }
        }

        public async Task DeleteTenantSetting(string name, string value)
        {
            if (AbpSession.TenantId.HasValue)
            {
                await SettingStore.DeleteAsync(new SettingInfo
                {
                    TenantId = AbpSession.TenantId.Value,
                    Name = name,
                    Value = value
                });
                await _tenantSettingCache.ClearAsync();
            }
            else
            {
                await SettingStore.DeleteAsync(new SettingInfo
                {
                    Name = name,
                    Value = value
                });
                await _applicationSettingCache.ClearAsync();
            }
        }
    }
}
