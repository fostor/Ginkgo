using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Abp.Application.Services.Dto;
using Abp.AspNetCore.Mvc.Authorization;
using Fostor.Ginkgo.Authorization;
using Fostor.Ginkgo.Controllers;
using Fostor.Ginkgo.Sys;
using Fostor.Ginkgo.Sys.Dto;
using Fostor.Ginkgo.Web.Areas.Admin.Models;

namespace Fostor.Ginkgo.Web.Mvc.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class SystemSettingController : GinkgoControllerBase
    {
        private readonly ISysSettingAppService _sysSettingAppService;
        public SystemSettingController(ISysSettingAppService sysSettingAppService)
        {
            _sysSettingAppService = sysSettingAppService;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Add()
        {
            return View("_AddModal");
        }
        public async Task<IActionResult> Edit(string name)
        {
            var val = await _sysSettingAppService.GetTenantSettingValue(name);
            var vmModel = new SystemSettingViewModel
            {
                Name = name,
                Value = val
            };
            return View("_EditModal", vmModel);           
        }
    }
}