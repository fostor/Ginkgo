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
    public class TaskOriginatorRouteAppService : AsyncCommonAppService<TaskOriginatorRoute, TaskOriginatorRouteDto>, ITaskOriginatorRouteAppService
    {
        private readonly IRepository<TaskOriginatorRoute> _repository;       
        public TaskOriginatorRouteAppService(IRepository<TaskOriginatorRoute> repository) : base(repository)
        {
            _repository = repository;            
        }

        public async Task<TaskOriginatorRouteDto> Save(TaskOriginatorRouteDto input)
        {
            var route = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.TaskCode == input.TaskCode
            && x.PhaseCode == input.PhaseCode && x.Originator == input.Originator);
            if (route != null)
            {
                input.Id = route.Id;
                return await Update(input);
            }
            else
            {
                return await Create(input);
            }
        }   

        public string GetMyFlowPhaseActors(string taskCode, string phaseCode)
        {            
            var route = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId
            && x.TaskCode == taskCode && x.Originator == AbpSession.UserName && x.PhaseCode == phaseCode);
            string result = "";
            if (route != null)
            {
                result = route.Actors ?? "";
            }
            return result;
        }

        public string GetFlowPhaseActors(string originator,string taskCode, string phaseCode)
        {            
            var route = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId
            && x.TaskCode == taskCode && x.Originator == originator && x.PhaseCode == phaseCode);
            string result = "";
            if (route != null)
            {
                result = route.Actors ?? "";
            }
            return result;
        }
    }
}
