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
    public interface ITaskPhaseAppService:IAsyncCrudAppService<TaskPhaseDto>
    {
        List<TaskPhaseDto> GetByTaskCode(string taskCode);
        List<TaskPhaseRouteQueryDto> GetMyTaskFlow(string taskCode);       
        Task<List<ActorDto>> GetFlowPhaseUsers(string taskCode, string phaseCode);
    }
}
