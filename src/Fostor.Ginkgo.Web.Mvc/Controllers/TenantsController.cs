﻿using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Abp.Application.Services.Dto;
using Abp.AspNetCore.Mvc.Authorization;
using Fostor.Ginkgo.Authorization;
using Fostor.Ginkgo.Controllers;
using Fostor.Ginkgo.MultiTenancy;
using Fostor.Ginkgo.MultiTenancy.Dto;

namespace Fostor.Ginkgo.Web.Controllers
{
    //[AbpMvcAuthorize(PermissionNames.Pages_Tenants)]
    public class TenantsController : GinkgoControllerBase
    {
        private readonly ITenantAppService _tenantAppService;

        public TenantsController(ITenantAppService tenantAppService)
        {
            _tenantAppService = tenantAppService;
        }

        public async Task<ActionResult> Index()
        {
            var output = await _tenantAppService.GetAll(new PagedTenantResultRequestDto { MaxResultCount = int.MaxValue }); // Paging not implemented yet
            return View(output);
        }

        public async Task<ActionResult> EditTenantModal(int tenantId)
        {
            var tenantDto = await _tenantAppService.Get(new EntityDto(tenantId));
            return View("_EditTenantModal", tenantDto);
        }
    }
}
