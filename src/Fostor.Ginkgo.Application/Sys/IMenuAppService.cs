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
    public interface IMenuAppService : IApplicationService
    {
        List<MenuItemDefinition> GetAllMenus();
    }
}
