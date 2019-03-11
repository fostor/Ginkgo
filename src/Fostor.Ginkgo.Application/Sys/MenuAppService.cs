using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Abp;
using Abp.Application.Navigation;
using Abp.Application.Services;
using Abp.Domain.Repositories;
using Abp.AutoMapper;
using System.Linq;
using Abp.Authorization;
using Abp.Localization;
using Fostor.Ginkgo.Sys.Dto;
using Fostor.Ginkgo.MultiTenancy;
using Abp.Application.Services.Dto;

namespace Fostor.Ginkgo.Sys
{
    public class MenuAppService : GinkgoAppServiceBase, IMenuAppService
    {
        private readonly IRepository<SysObject> _repository;
        public MenuAppService(IRepository<SysObject> repository)
        {
            _repository = repository;
        }
        public List<MenuItemDefinition> GetAllMenus()
        {
            //以Host的有效菜单作为全集，各tenant依据权限过滤菜单           
            var listObj = _repository.GetAllList(t => t.TenantId == null && t.IsDeleted == false && t.IsEnable == true && t.IsMenuItem == true);
            List<MenuItemDefinition> menuList = new List<MenuItemDefinition>();

            foreach (SysObject p in listObj.FindAll(t => t.ParentKey == string.Empty).OrderBy(t => t.SortCode))
            {
                var item = new MenuItemDefinition(p.ObjectKey, L(p.DisplayName),
                    icon: p.Icon,
                    url: p.Uri,
                    requiredPermissionName: p.ObjectKey,
                    order: p.SortCode.HasValue ? p.SortCode.Value : 0
                );
                AddMenuItem(item);
                menuList.Add(item);
            }

            //本地方法实现递归
            void AddMenuItem(MenuItemDefinition menuItem)
            {
                var itemList = listObj.FindAll(t => t.ParentKey == menuItem.Name).OrderBy(t => t.SortCode);
                foreach (SysObject p in itemList)
                {
                    var item = new MenuItemDefinition(p.ObjectKey, L(p.DisplayName),
                        icon: p.Icon,
                        url: p.Uri,
                        order: p.SortCode.HasValue ? p.SortCode.Value : 0,
                        requiredPermissionName: p.ObjectKey
                    );
                    AddMenuItem(item);
                    menuItem.Items.Add(item);
                }
            }

            return menuList;
        }

        private new static ILocalizableString L(string name)
        {
            return new LocalizableString(name, GinkgoConsts.LocalizationSourceName);
        }
    }
}
