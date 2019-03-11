using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Fostor.Ginkgo.TaskFlow.Dto;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.TaskTypeSelector
{
    public class TaskTypeSelectorViewModel
    {
        public List<TaskTemplateDto> Tasks { get; set; }

        public string TagName { get; set; }

        public string SelectedValue { get; set; }

        public bool IsRequired { get; set; }

        public bool IsDisabled { get; set; }
    }
}
