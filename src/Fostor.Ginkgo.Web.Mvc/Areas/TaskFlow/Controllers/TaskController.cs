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
using Fostor.Ginkgo.Web.Areas.TaskFlow.Models.Task;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.Web.Mvc.Areas.TaskFlow.Controllers
{
    [Area("TaskFlow")]
    public class TaskController : GinkgoControllerBase
    {
        private readonly ITaskInstanceAppService _taskInstanceAppService;
        private readonly ITaskExecuteAppService _taskExecuteAppService;
        public TaskController(ITaskInstanceAppService taskInstanceAppService,
            ITaskExecuteAppService taskExecuteAppService)
        {
            _taskInstanceAppService = taskInstanceAppService;
            _taskExecuteAppService = taskExecuteAppService;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult MyRequestList()
        {
            return View("MyRequestList");
        }
        public async Task<IActionResult> MyRequestForm(int id)
        {
            var task = await _taskInstanceAppService.Get(new EntityDto<int> { Id = id });
            var exelogs = await _taskExecuteAppService.GetByInstanceCode(task.InstanceCode);
            var vmModel = new TaskViewModel
            {
                Instance = task,
                ExecuteLogs = exelogs
            };
            return View("MyRequestForm",vmModel);
        }
        public IActionResult ToDoList()
        {
            return View("ToDoList");
        }
        public async Task<IActionResult> SendForm(int id)
        {
            var task = await _taskInstanceAppService.Get(new EntityDto<int> { Id = id });
            var vmModel = new TaskViewModel
            {
                Instance = task,
                NextPhaseActors = await _taskInstanceAppService.GetNextPhaseActors(task.InstanceCode),
                ToReturnActors = await _taskInstanceAppService.GetReturnedActors(task.InstanceCode)
            };
            return View("SendForm",vmModel);
        }
        public async Task<IActionResult> DoForm(int id)
        {
            var task = await _taskInstanceAppService.Get(new EntityDto<int> { Id = id });
            var exelogs = await _taskExecuteAppService.GetByInstanceCode(task.InstanceCode);
            var vmModel = new TaskViewModel
            {
                Instance = task,
                NextPhaseActors = await _taskInstanceAppService.GetNextPhaseActors(task.InstanceCode),
                ToReturnActors = await _taskInstanceAppService.GetReturnedActors(task.InstanceCode),
                ExecuteLogs = exelogs
            };
            return View("DoForm", vmModel);
        }

        public IActionResult BatchDo()
        {
            return View("BatchForm");
        }

        public IActionResult MonitorList()
        {
            return View("MonitorList");
        }

        public async Task<IActionResult> ViewForm(int id)
        {
            var task = await _taskInstanceAppService.Get(new EntityDto<int> { Id = id });
            var exelogs = await _taskExecuteAppService.GetByInstanceCode(task.InstanceCode);
            var vmModel = new TaskViewModel
            {
                Instance = task,
                ExecuteLogs = exelogs
            };
            return View("ViewForm", vmModel);
        }

    }
}