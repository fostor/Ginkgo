using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Fostor.Ginkgo.TaskFlow;
using Fostor.Ginkgo.TaskFlow.Dto;
using Fostor.Ginkgo.Sessions;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.TaskFlag
{
    public class TaskFlagViewComponent : GinkgoViewComponent
    {
        public  IViewComponentResult Invoke()
        {            
            return View("Default");
        }
    }
}
