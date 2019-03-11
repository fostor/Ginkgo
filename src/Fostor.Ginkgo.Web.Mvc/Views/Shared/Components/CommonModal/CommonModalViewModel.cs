using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.CommonModal
{
    public class CommonModalViewModel
    {
        public string ModalName { get; set; }
        public string ModalTitle { get; set; }
        public bool ShowSaveButton { get; set; }
        public string Width { get; set; }
        public string Height { get; set; }
        public string OtherButtonHtml { get; set; }


    }
}
