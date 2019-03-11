using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Fostor.Ginkgo.Controllers;
using Fostor.Ginkgo.Web.Startup;
using Abp.AspNetCore.Mvc.Authorization;
using Abp.Application.Services.Dto;
using Fostor.Ginkgo.Sys;
using Fostor.Ginkgo.TaskFlow;
using Fostor.Ginkgo.TaskFlow.Dto;
using Fostor.Ginkgo.Web.Areas.TaskFlow.Models.Flow;
using Abp.AutoMapper;
using Fostor.Ginkgo.Sessions;

namespace Fostor.Ginkgo.Web.Mvc.Areas.TaskFlow.Controllers
{
    [Area("TaskFlow")]
    public class FlowController : GinkgoControllerBase
    {
        private readonly ITaskTemplateAppService _taskTemplateAppService;
        private readonly ITaskPhaseAppService _taskPhaseAppService;
        private readonly ITaskRoleAppService _taskRoleAppService;
        private readonly ITaskOriginatorRouteAppService _taskOriginatorRouteAppService;
        private readonly ISessionAppService _sessionAppService;
        public FlowController(ITaskTemplateAppService taskTemplateAppService,
            ITaskPhaseAppService taskPhaseAppService,
            ITaskRoleAppService taskRoleAppService,
            ITaskOriginatorRouteAppService taskOriginatorRouteAppService,
            ISessionAppService sessionAppService)
        {
            _taskTemplateAppService = taskTemplateAppService;
            _taskPhaseAppService = taskPhaseAppService;
            _taskRoleAppService = taskRoleAppService;
            _taskOriginatorRouteAppService = taskOriginatorRouteAppService;
            _sessionAppService = sessionAppService;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult AddFlow()
        {
            return View("AddFlow");
        }

        public async Task<IActionResult> EditFlow(int id)
        {
            var flow = await _taskTemplateAppService.Get(new EntityDto<int> { Id = id });
            var vmModel = new FlowViewModel
            {
                Flow = flow
            };
            return View("EditFlow",vmModel);
        }

        public IActionResult AddPhaseModal(string taskCode)
        {
            ViewBag.TaskCode = taskCode;
            return View("_AddPhaseModal");
        }

        public async Task<IActionResult> EditPhaseModal(int id)
        {
            var phase = await _taskPhaseAppService.Get(new EntityDto<int> { Id = id });
            var vmModel = new PhaseViewModel
            {
                Phase = phase
            };
            return View("_EditPhaseModal",vmModel);
        }

        public IActionResult RoleList()
        {
            return View("RoleList");
        }

        public IActionResult AddRole()
        {
            return View("_AddRoleModal");
        }

        public async Task<IActionResult> EditRole(int id)
        {
            var role = await _taskRoleAppService.Get(new EntityDto<int> { Id = id });
            var vmModel = new TaskRoleViewModel
            {
                Role = role
            };
            return View("_EditRoleModal",vmModel);
        }
        public   IActionResult MyFlowList()
        {
            var list = _taskTemplateAppService.GetMyFlowList();
            if(list !=null && list.Count() > 0)
            {
                var flowList = from x in list
                               select new
                               {
                                   Code = x.TaskCode,
                                   Text = x.TaskCode +" "+ x.TaskName
                               };
                ViewBag.FlowList = flowList;
            }
            return View("MyFlowList");
        }
  
        public async Task<IActionResult> EditMyFlowPhase(string taskCode,string phaseCode)
        {
            var userName = (await _sessionAppService.GetCurrentLoginInformations()).User.UserName;
            ViewBag.TaskCode = taskCode;
            ViewBag.PhaseCode = phaseCode;
            ViewBag.Originator = userName;

            return View("_EditMyFlowPhaseModal");
        }

    }
}