using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.MaterialDatePicker
{
    public class MaterialDatePickerViewComponent:GinkgoViewComponent
    {
        public IViewComponentResult Invoke(string tagName, string value = "", string required = "0", string disabled = "0",string showTime="0")
        {
            var vmModel = new MaterialDatePickerViewModel
            {
                TagName = tagName,
                Value = value,
                ShowTime = showTime == "1" ? true : false,
                IsRequired = required == "1" ? true : false,
                IsDisabled = disabled == "1" ? true : false
            };

            return View("Default", vmModel);
        }
    }
}
