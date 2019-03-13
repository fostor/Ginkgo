using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.DatePicker
{
    public class DatePickerViewModel
    {
        public string TagName { get; set; }

        public string Value { get; set; }

        public bool IsDisabled { get; set; }

        public bool IsRequired { get; set; }
    }
}
