using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Fostor.Ginkgo.TaskFlow;
using Fostor.Ginkgo.TaskFlow.Dto;
using Fostor.Ginkgo.Sessions;


namespace Fostor.Ginkgo.Web.Views.Shared.Components.TaskRoleSelector
{
    public class TaskRoleSelectorViewComponent : GinkgoViewComponent
    {
        private readonly ITaskRoleAppService _taskRoleAppService;
        public TaskRoleSelectorViewComponent(ITaskRoleAppService taskRoleAppService)
        {
            _taskRoleAppService = taskRoleAppService;
        }

        public async Task<IViewComponentResult> InvokeAsync(string tagName = "TaskRole", string selectedValue = "",
     string required = "0", string disabled = "0")
        {
            var roles = (await _taskRoleAppService.GetAll(new Abp.Application.Services.Dto.PagedAndSortedResultRequestDto { MaxResultCount = int.MaxValue })).Items.OrderBy(x => x.RoleCode).ToList();
            var vmModel = new TaskRoleSelectorViewModel
            {
                Roles = roles,
                TagName = tagName,
                SelectedValue = selectedValue,
                IsRequired = required == "1" ? true : false,
                IsDisabled = disabled == "1" ? true : false
            };
            return View("Default", vmModel);
        }
    }
}
