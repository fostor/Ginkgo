using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Fostor.Ginkgo.Sys;
using Microsoft.AspNetCore.Mvc;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.DataConfigSelector
{
    public class DataConfigSelectorViewComponent:GinkgoViewComponent
    {
        private readonly IDataDictionaryAppService _dataDictionaryAppService;
        public DataConfigSelectorViewComponent(IDataDictionaryAppService dataDictionaryAppService)
        {
            _dataDictionaryAppService = dataDictionaryAppService;
        }

        public IViewComponentResult Invoke(string configCode,string tagName, string selectedValue = "", string required = "0", string disabled = "0",string textAsValue="0")
        {
            var list = _dataDictionaryAppService.GetDataConfigByCode(configCode);
            var vmModel = new DataConfigSelectorViewModel
            {
                ConfigList = list,
                SelectedValue = selectedValue,
                TagName = tagName,
                IsRequired = required == "1" ? true : false,
                IsDisabled = disabled == "1" ? true : false,
                UseTextAsValue = textAsValue == "1" ? true : false
            };
            return View(vmModel);
        }
    }
}
