using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Fostor.Ginkgo.Sys.Dto;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.DataConfigSelector
{
    public class DataConfigSelectorViewModel
    {
        public List<DataConfigDto> ConfigList { get; set; }

        public string SelectedValue { get; set; }

        public string TagName { get; set; }

        public bool IsRequired { get; set; }

        public bool IsDisabled { get; set; }

        public bool UseTextAsValue { get; set; }
    }
}
