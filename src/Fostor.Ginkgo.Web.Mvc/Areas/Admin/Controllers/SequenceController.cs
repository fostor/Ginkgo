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


namespace Fostor.Ginkgo.Web.Mvc.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class SequenceController : GinkgoControllerBase
    {
        private readonly ISequenceNumberAppService _sequenceNumberAppService;

        public SequenceController(ISequenceNumberAppService sequenceNumberAppService)
        {
            _sequenceNumberAppService = sequenceNumberAppService;
        }
        public  IActionResult Index()
        {            
            return View();
        }

        public  IActionResult Edit(int id)
        {
            var seqNumber = _sequenceNumberAppService.Get(new EntityDto<int> { Id = id });
            var vmModel = new SequneceNumberViewModel
            {
                SeqNumber = seqNumber
            };
            return View("_EditModal", vmModel);
        }
    }
}