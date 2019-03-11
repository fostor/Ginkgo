using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Abp.AutoMapper;
using Fostor.Ginkgo.Sessions;
using Microsoft.AspNetCore.Mvc;
using Fostor.Ginkgo.TaskFlow;
using Fostor.Ginkgo.TaskFlow.Dto;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.TaskTypeSelector
{
    public class TaskTypeSelectorViewComponent:GinkgoViewComponent
    {
        private readonly ITaskTemplateAppService _taskTemplateAppService;

        public TaskTypeSelectorViewComponent(ITaskTemplateAppService taskTemplateAppService)
        {
            _taskTemplateAppService = taskTemplateAppService;
        }

        public async Task<IViewComponentResult> InvokeAsync(string tagName = "TaskCode", string selectedValue = "", string required = "0", string disabled = "0")
        {
            var tasks = (await _taskTemplateAppService.GetAll(new Abp.Application.Services.Dto.PagedAndSortedResultRequestDto { MaxResultCount = int.MaxValue }))
                   .Items.OrderBy(x=>x.TaskCode).ToList();

            var viewModel = new TaskTypeSelectorViewModel
            {
                Tasks = tasks,
                TagName = tagName,
                SelectedValue = selectedValue,
                IsRequired = required == "1" ? true : false,
                IsDisabled = disabled == "1" ? true : false
            };

            return View("Default", viewModel);
        }
    }
}
