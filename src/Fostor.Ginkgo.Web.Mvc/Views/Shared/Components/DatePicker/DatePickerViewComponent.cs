using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.DatePicker
{
    public class DatePickerViewComponent:GinkgoViewComponent
    {
        public IViewComponentResult Invoke(string tagName, string value = "", string required = "0", string disabled = "0")
        {
            var vmModel = new DatePickerViewModel
            {
                TagName = tagName,
                Value = value,
                IsRequired = required == "1" ? true : false,
                IsDisabled = disabled == "1" ? true : false
            }; 

            return View("Default",vmModel);
        }
    }
}
