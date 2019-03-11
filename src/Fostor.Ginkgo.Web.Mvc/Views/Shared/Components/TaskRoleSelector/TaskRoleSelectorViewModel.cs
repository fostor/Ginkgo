using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Fostor.Ginkgo.TaskFlow.Dto;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.TaskRoleSelector
{
    public class TaskRoleSelectorViewModel
    {
        public List<TaskRoleDto> Roles { get; set; }

        public string TagName { get; set; }

        public string SelectedValue { get; set; }

        public bool IsRequired { get; set; }

        public bool IsDisabled { get; set; }
    }
}
