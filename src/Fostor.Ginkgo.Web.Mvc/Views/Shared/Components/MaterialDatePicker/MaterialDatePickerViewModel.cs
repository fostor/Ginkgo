using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.MaterialDatePicker
{
    public class MaterialDatePickerViewModel
    {
        public string TagName { get; set; }

        public string Value { get; set; }

        public bool IsDisabled { get; set; }

        public bool IsRequired { get; set; }
        public bool ShowTime { get; set; }
    }
}
