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
    public class TaskRoleAppService:AsyncCommonAppService<TaskRole,TaskRoleDto>,ITaskRoleAppService
    {
        private readonly IRepository<TaskRole> _repository;
        private readonly IRepository<TaskRoleMember> _repoMembers;
        public TaskRoleAppService(IRepository<TaskRole> repository,
            IRepository<TaskRoleMember> repoMembers) : base(repository)
        {
            _repository = repository;
            _repoMembers = repoMembers;
        }
        public async override Task Delete(EntityDto<int> input)
        {
            var role = await Get(new EntityDto<int> { Id = input.Id });
            var list = _repoMembers.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskRole == role.RoleCode);
            foreach(var x in list)
            {
                _repoMembers.Delete(x);
            }
            await base.Delete(input);
            return;
        }
        public List<TaskRoleDto> Search(string roleCode,string roleName)
        {
            return _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
            && ((roleCode ?? "").Length > 0 ? x.RoleCode == roleCode : 1 == 1)
            && ((roleName ?? "").Length > 0 ? x.RoleName.Contains(roleName) : 1 == 1))
            .MapTo<List<TaskRoleDto>>();
        }
    }
}
