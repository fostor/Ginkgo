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
    public class LocalizationController : GinkgoControllerBase
    {
        private readonly ILanguageTextAppService _languageTextAppService;
        public LocalizationController(LanguageTextAppService languageTextAppService)
        {
            _languageTextAppService = languageTextAppService;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Add()
        {
            return View("_AddModal");
        }
        public IActionResult Edit(int id)
        {
            var lang = _languageTextAppService.Get(id);
            var vmModel = new LanguageTextViewModel
            {
                LangText = lang
            };
            return View("_EditModal", vmModel);
        }
        public IActionResult Copy()
        {
            return View("_CopyModal");
        }
    }
}