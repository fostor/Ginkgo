using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Abp.Application.Services.Dto;
using Abp.AspNetCore.Mvc.Authorization;
using Fostor.Ginkgo.Authorization;
using Fostor.Ginkgo.Controllers;
using Fostor.Ginkgo.Sys;
using Fostor.Ginkgo.Sys.Dto;
using Fostor.Ginkgo.Web.Areas.Admin.Models;

namespace Fostor.Ginkgo.Web.Mvc.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class SysObjectController : GinkgoControllerBase
    {
        private readonly ISysObjectAppService _sysObjectAppService;
        private readonly IDataDictionaryAppService _dataDictionaryAppService;
        public SysObjectController(ISysObjectAppService sysObjectAppService,
            IDataDictionaryAppService dataDictionaryAppService)
        {
            _sysObjectAppService = sysObjectAppService;
            _dataDictionaryAppService = dataDictionaryAppService;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Add()
        {
            var sysObject = new SysObjectDto();
            var vmModel = new SysObjectViewModel
            {
                SysObject = sysObject,
                AllPermissions = GetAllObjectPermissions()
            };
            return View("_AddModal", vmModel);            
        }
        public IActionResult Edit(int id)
        {
            var sysObject = _sysObjectAppService.Get(new EntityDto<int> { Id = id });
            var vmModel = new SysObjectViewModel
            {
                SysObject=sysObject,
                AllPermissions=GetAllObjectPermissions()
            };
            return View("_EditModal", vmModel);
        }

        private List<ObjectPermissionDto> GetAllObjectPermissions()
        {
            //代码预设权限
            var pmNames = new List<ObjectPermissionDto>()
            {
                new ObjectPermissionDto(){PermissionName="Create",DisplayName="新建"},
                new ObjectPermissionDto(){PermissionName="Update",DisplayName="修改"},                
                new ObjectPermissionDto(){PermissionName="Delete",DisplayName="删除"},
                new ObjectPermissionDto(){PermissionName="Print",DisplayName="打印"},
                new ObjectPermissionDto(){PermissionName="Export",DisplayName="导出"},
                new ObjectPermissionDto(){PermissionName="Import",DisplayName="导入"}
            };
            //用数据字典维护
            //var list = _dataDictionaryAppService.GetDataConfigByCode("ObjectPermissions").OrderBy(x => x.Id).ToList();
            //var pmNames = new List<ObjectPermissionDto>();
            //foreach (var x in list)
            //{
            //    pmNames.Add(new ObjectPermissionDto { PermissionName = x.Code, DisplayName = x.Name });
            //}
            return pmNames;
        }
    }
}