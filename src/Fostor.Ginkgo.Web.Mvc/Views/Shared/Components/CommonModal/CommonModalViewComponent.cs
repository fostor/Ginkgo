using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.CommonModal
{
    public class CommonModalViewComponent : GinkgoViewComponent
    {

        public IViewComponentResult Invoke(string modalName, string modalTitle = "", string showSaveBtn = "1", string width = "80%", string height = "80%", string otherBtnHtml = "")
        {
            var vmModel = new CommonModalViewModel
            {
                ModalName = modalName,
                ModalTitle = modalTitle,
                ShowSaveButton = showSaveBtn == "1" ? true : false,
                Width = width,
                Height = height,
                OtherButtonHtml = otherBtnHtml
            };
            return View(vmModel);
        }
    }
}
