using Microsoft.AspNetCore.Antiforgery;
using Fostor.Ginkgo.Controllers;

namespace Fostor.Ginkgo.Web.Host.Controllers
{
    public class AntiForgeryController : GinkgoControllerBase
    {
        private readonly IAntiforgery _antiforgery;

        public AntiForgeryController(IAntiforgery antiforgery)
        {
            _antiforgery = antiforgery;
        }

        public void GetToken()
        {
            _antiforgery.SetCookieTokenAndHeader(HttpContext);
        }
    }
}
