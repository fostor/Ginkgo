using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.CommonModal
{
    public class CommonModalViewComponent : GinkgoViewComponent
    {

        public IViewComponentResult Invoke(string modalName, string width = "80%", string height = "80%")
        {
            var vmModel = new CommonModalViewModel
            {
                ModalName = modalName,              
                Width = width,
                Height = height                
            };
            return View(vmModel);
        }
    }
}
