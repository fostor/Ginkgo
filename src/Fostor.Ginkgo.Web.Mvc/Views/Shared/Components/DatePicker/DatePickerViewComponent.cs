using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.DatePicker
{
    public class DatePickerViewComponent:GinkgoViewComponent
    {
        public IViewComponentResult Invoke(string tagName, string value = "")
        {
            var vmModel = new DatePickerViewModel
            {
                TagName = tagName,
                Value = value
            }; 

            return View("Default",vmModel);
        }
    }
}
