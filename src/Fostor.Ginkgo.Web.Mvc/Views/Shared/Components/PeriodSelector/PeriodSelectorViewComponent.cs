using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.PeriodSelector
{
    public class PeriodSelectorViewComponent:GinkgoViewComponent
    {
        public IViewComponentResult Invoke(string tagName, string selectedValue = "")
        {
            List<string> list = new List<string>();
            //add next month
            //list.Add(DateTime.Now.AddMonths(1).ToString("yyyy-MM"));
            //add this year month
            for(int i = 0; i < DateTime.Now.Month; i++)
            {
                list.Add(DateTime.Now.AddMonths(-i).ToString("yyyy-MM"));
            }
            //add latest 3 years
            DateTime latestDecember = DateTime.Parse(DateTime.Now.AddYears(-1).ToString("yyyy") + "-12-01");
            for (int i = 0; i < 36; i++)
            {
                list.Add(latestDecember.AddMonths(-i).ToString("yyyy-MM"));
            }

            //list.Reverse();
            //list.Sort((x, y) => -x.CompareTo(y));

            var vmModel = new PeriodSelectorViewModel
            {
                Periods = list,
                TagName = tagName,
                SelectedValue = selectedValue
            };
            return View("Default", vmModel);
        }
    }
}
