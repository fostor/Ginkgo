using Abp.Authorization;
using Abp.Localization;
using Abp.MultiTenancy;
using Abp.Domain.Repositories;
using Fostor.Ginkgo.Sys;
using System.Collections.Generic;

namespace Fostor.Ginkgo.Authorization
{
    public class GinkgoAuthorizationProvider : AuthorizationProvider
    {
        private readonly IRepository<SysObject> _repoObj;
        private readonly IRepository<ObjectPermission> _repoPermission;
        private List<string> _hostMenus = new List<string>()
        {
            "Admin.Tenant",
            "Admin.SysObject"            
        };
        public GinkgoAuthorizationProvider(IRepository<SysObject> repoObj,
            IRepository<ObjectPermission> repoPermission)
        {
            _repoObj = repoObj;
            _repoPermission = repoPermission;
        }
        public override void SetPermissions(IPermissionDefinitionContext context)
        {
            //context.CreatePermission(PermissionNames.Pages_Users, L("Users"));
            //context.CreatePermission(PermissionNames.Pages_Roles, L("Roles"));
            //context.CreatePermission(PermissionNames.Pages_Tenants, L("Tenants"), multiTenancySides: MultiTenancySides.Host);
            var list = _repoObj.GetAllList(t => t.TenantId == null && t.IsDeleted == false && t.IsEnable==true);
            foreach (SysObject p in list)
            {
                if (_hostMenus.Contains(p.ObjectKey))
                {
                    CreateObjectPermission(context.CreatePermission(p.ObjectKey, L(p.DisplayName), multiTenancySides: MultiTenancySides.Host), isHostSide: true);
                }
                else
                {
                    CreateObjectPermission(context.CreatePermission(p.ObjectKey, L(p.DisplayName)));
                }

            }
        }

        void CreateObjectPermission(Permission permission, bool isHostSide = false)
        {
            var list = _repoPermission.GetAllList(t => t.ObjectKey == permission.Name);
            foreach (var p in list)
            {
                if (isHostSide)
                {
                    permission.CreateChildPermission(p.ObjectKey + "." + p.PermissionName, L(p.DisplayName), multiTenancySides: MultiTenancySides.Host);
                }
                else
                {
                    permission.CreateChildPermission(p.ObjectKey + "." + p.PermissionName, L(p.DisplayName));
                }
            }
        }

        private static ILocalizableString L(string name)
        {
            return new LocalizableString(name, GinkgoConsts.LocalizationSourceName);
        }
    }
}
