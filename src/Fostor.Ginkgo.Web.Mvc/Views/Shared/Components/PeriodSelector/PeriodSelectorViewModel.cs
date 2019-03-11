using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.PeriodSelector
{
    public class PeriodSelectorViewModel
    {
        public List<string> Periods { get; set; }

        public string TagName { get; set; }

        public string SelectedValue { get; set; }
    }
}
