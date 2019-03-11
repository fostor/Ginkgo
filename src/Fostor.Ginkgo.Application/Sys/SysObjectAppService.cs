using System;
using System.Collections.Generic;
using System.Text;
using Abp.Application.Services;
using Abp.Domain.Repositories;
using System.Threading.Tasks;
using Abp.Application.Services.Dto;
using System.Linq;
using Abp.AutoMapper;
using System.Data.SqlClient;
using Abp.Authorization;
using Fostor.Ginkgo.Sys.Dto;
using Fostor.Ginkgo.Sql;

namespace Fostor.Ginkgo.Sys
{
    public class SysObjectAppService:CommonAppService<SysObject,SysObjectDto>,ISysObjectAppService
    {
        private readonly IRepository<SysObject> _repository;
        private readonly IRepository<ObjectPermission> _repoPermission;
        public SysObjectAppService(IRepository<SysObject> repository,
            IRepository<ObjectPermission> repoPermission) : base(repository)
        {
            _repository = repository;
            _repoPermission = repoPermission;
        }
        public override SysObjectDto Create(SysObjectDto input)
        {
            var obj = _repository.FirstOrDefault(x => x.ObjectKey == input.ObjectKey && x.TenantId==null);
            if (obj != null)
            {                
                throw new Abp.UI.UserFriendlyException(string.Format(L("ObjectKeyIsDuplicate"), input.ObjectKey));
            }
            if (input.RefPermissions != null)
            {
                foreach (ObjectPermissionDto p in input.RefPermissions)
                {                    
                    _repoPermission.InsertOrUpdate(p.MapTo<ObjectPermission>());
                }
            }
            return base.Create(input);
        }
        public override SysObjectDto Update(SysObjectDto input)
        {
            List<ObjectPermission> listOP = input.RefPermissions.MapTo<List<ObjectPermission>>();
            //delete invalid permission
            var list = _repoPermission.GetAllList(t =>t.TenantId==null && t.ObjectKey == input.ObjectKey);
            foreach (ObjectPermission p in list)
            {
                if (!listOP.Contains(p))
                {
                    _repoPermission.Delete(p);
                }
            }
            //add new permission
            foreach (ObjectPermission p in listOP)
            {
                _repoPermission.InsertOrUpdate(p);
            }
            return base.Update(input);
        }
        public override void Delete(EntityDto<int> input)
        {
            var sysObj = _repository.Get(input.Id);
            var list = _repoPermission.GetAllList(x => x.TenantId == null 
            && x.ObjectKey == sysObj.ObjectKey);
            foreach(var p in list)
            {
                _repoPermission.Delete(p);
            }
            base.Delete(input);
        }
        public override SysObjectDto Get(EntityDto<int> input)
        {
            var sysObj = base.Get(input);
            var list = _repoPermission.GetAllList(x => x.TenantId == null && x.ObjectKey == sysObj.ObjectKey)
                .MapTo<List<ObjectPermissionDto>>();
            sysObj.RefPermissions = list;
            return sysObj;
        }

        public override PagedResultDto<SysObjectDto> GetAll(PagedAndSortedResultRequestDto input)
        {
            var list = base.GetAll(input);
            foreach (var  x in list.Items)
            {
                x.RefPermissions = _repoPermission.GetAllList(t =>t.TenantId==null && t.ObjectKey == x.ObjectKey)
                    .MapTo<List<ObjectPermissionDto>>();
            }
            return list;
        }
    }
}
