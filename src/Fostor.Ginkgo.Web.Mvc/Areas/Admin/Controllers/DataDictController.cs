using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Fostor.Ginkgo.Controllers;
using Fostor.Ginkgo.Web.Areas.Admin.Models;
using Fostor.Ginkgo.Sys;
using Fostor.Ginkgo.Web.Startup;
using Abp.AspNetCore.Mvc.Authorization;
using Abp.Application.Services.Dto;
using Fostor.Ginkgo.Sys.Dto;

namespace Fostor.Ginkgo.Web.Mvc.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class DataDictController : GinkgoControllerBase
    {
        private readonly IDataDictionaryAppService _dataService;

        public DataDictController(IDataDictionaryAppService dataService)
        {
            _dataService = dataService;
        }

        public IActionResult Index()
        {
            return View("Index");
        }

        public async Task<ActionResult> Edit(int id)
        {
            var dataDict = await _dataService.Get(new EntityDto<int> { Id = id });            
            
            var vmModel = new DataDictViewModel { DataDictionaryDto = dataDict };
            return View("_EditModal", vmModel);
        }
    }
}