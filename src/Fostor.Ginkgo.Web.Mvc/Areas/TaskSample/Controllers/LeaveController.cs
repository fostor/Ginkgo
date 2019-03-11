using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Abp.Application.Services.Dto;
using Fostor.Ginkgo.TaskSample;
using Fostor.Ginkgo.TaskSample.Dto;
using Fostor.Ginkgo.Controllers;
using Fostor.Ginkgo.Web.Areas.TaskSample.Models;

namespace Fostor.Ginkgo.Web.Mvc.Areas.TaskSample.Controllers
{
    [Area("TaskSample")]
    public class LeaveController : GinkgoControllerBase
    {
        private readonly ILeaveApplicationAppService _leaveApplicationAppService;
        public LeaveController(ILeaveApplicationAppService leaveApplicationAppService)
        {
            _leaveApplicationAppService = leaveApplicationAppService;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Add()
        {
            ViewBag.Applicant = AbpSession.UserName;
            return View("_AddModal");
        }
        public async Task<IActionResult> Edit(int id)
        {
            var leave = await _leaveApplicationAppService.Get(new EntityDto<int> { Id = id });
            var vmModel = new LeaveViewModel
            {
                Leave=leave
            };
            return View("_EditModal", vmModel);
        }
    }
}