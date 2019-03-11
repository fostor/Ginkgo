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
using Fostor.Ginkgo.Sys;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskTemplateAppService:AsyncCommonAppService<TaskTemplate,TaskTemplateDto>,ITaskTemplateAppService
    {
        private readonly IRepository<TaskTemplate> _repository;
        private readonly ISequenceNumberAppService _sequenceNumberAppService;
        private readonly IRepository<TaskPhase> _repoPhases;        
        private readonly IRepository<TaskOriginator> _repoOriginator;
        public TaskTemplateAppService(IRepository<TaskTemplate> repository,            
            ISequenceNumberAppService sequenceNumberAppService,
            IRepository<TaskPhase> repoPhases,
            IRepository<TaskOriginator> repoOriginator) : base(repository)
        {
            _repository = repository;
            _sequenceNumberAppService = sequenceNumberAppService;
            _repoPhases = repoPhases;            
            _repoOriginator = repoOriginator;
        }

        public override Task<TaskTemplateDto> Create(TaskTemplateDto input)
        {
            input.TaskCode = _sequenceNumberAppService.GetSequenceNumberStringByCode("TaskCode");
            return base.Create(input);
        }
        public async override Task Delete(EntityDto<int> input)
        {
            var task = await Get(new EntityDto<int> { Id = input.Id });
            var list = _repoPhases.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskCode == task.TaskCode);
            foreach(var x in list)
            {
                _repoPhases.Delete(x);
            }
            await base.Delete(input);
            return;
        }

        public List<TaskTemplateDto> Search(TaskTemplateSearchDto input)
        {
            var list = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
            && ((input.TaskCode ?? "").Length > 0 ? x.TaskCode == input.TaskCode : 1 == 1)
            && ((input.TaskName ?? "").Length > 0 ? x.TaskName.Contains(input.TaskName) : 1 == 1))
            .MapTo<List<TaskTemplateDto>>();
            return list;
        }

        public List<TaskTemplateDto> GetMyFlowList()
        {            
            var myList0 = _repoOriginator.GetAllList(x => x.TenantId == AbpSession.TenantId && x.Originator == AbpSession.UserName);
            var myList1 = new List<string>();
            if(myList0!=null && myList0.Count() > 0)
            {
                foreach(var x in myList0)
                {
                    myList1.Add(x.TaskCode);
                }
            }
            var result = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
            && (x.IsDefaultForAllUser == true || myList1.Contains(x.TaskCode))).MapTo<List<TaskTemplateDto>>();
            return result;
        }
    }
}
