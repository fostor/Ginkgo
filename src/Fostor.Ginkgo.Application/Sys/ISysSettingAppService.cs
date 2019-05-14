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

namespace Fostor.Ginkgo.Sys
{
    public interface ISysSettingAppService :IApplicationService
    {
        Task<string> GetTenantSettingValue(string name);
        Task<IReadOnlyList<ISettingValue>> GetTenantAllSettings();
        Task UpdateTenantSetting(string name, string value);
        Task CreateTenantSetting(string name, string value);
        Task DeleteTenantSetting(string name, string value);
    }
}
