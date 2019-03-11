using System;
using System.Collections.Generic;
using System.Text;
using Abp.Application.Services;
using Fostor.Ginkgo.TaskFlow.Dto;
using Abp.Domain.Repositories;
using System.Threading.Tasks;
using Abp.Application.Services.Dto;
using System.Linq;
using Fostor.Ginkgo.Sessions;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskRoleMemberAppService:AsyncCommonAppService<TaskRoleMember,TaskRoleMemberDto>,ITaskRoleMemberAppService
    {
        private readonly IRepository<TaskRoleMember> _repository;        
        public TaskRoleMemberAppService(IRepository<TaskRoleMember> repository) : base(repository)
        {
            _repository = repository;            
        }

        public List<TaskRoleMemberDto> GetByRoleCode(string roleCode)
        {
            return _repository.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskRole == roleCode).MapTo<List<TaskRoleMemberDto>>();
        }

        public int BatchInsertOrUpdate(List<string> list,string roleCode)
        {           
            int n = 0;
            var listOld = GetByRoleCode(roleCode);
            //add new
            if (list != null && list.Count() > 0)
            {
                foreach(var u in list)
                {
                    _repository.Insert(new TaskRoleMember
                    {
                        TenantId = AbpSession.TenantId,
                        TaskRole = roleCode,
                        UserName = u,
                        CreationTime = Abp.Timing.Clock.Now,
                        Creator = AbpSession.UserName
                    });
                    n += 1;
                }
            }
            //delete old
            foreach(var m in listOld)
            {
                _repository.Delete(m.Id);
            }
            return n;
        }
    }
}
