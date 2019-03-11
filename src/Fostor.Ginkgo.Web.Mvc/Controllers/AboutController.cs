using Microsoft.AspNetCore.Mvc;
using Abp.AspNetCore.Mvc.Authorization;
using Fostor.Ginkgo.Controllers;

namespace Fostor.Ginkgo.Web.Controllers
{
    [AbpMvcAuthorize]
    public class AboutController : GinkgoControllerBase
    {
        public ActionResult Index()
        {
            return View();
        }
	}
}
