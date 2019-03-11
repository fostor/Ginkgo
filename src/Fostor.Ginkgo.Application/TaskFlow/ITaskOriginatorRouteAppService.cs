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
    public interface ITaskOriginatorRouteAppService:IAsyncCrudAppService<TaskOriginatorRouteDto>
    {
        Task<TaskOriginatorRouteDto> Save(TaskOriginatorRouteDto input);       
        string GetMyFlowPhaseActors(string taskCode, string phaseCode);

        string GetFlowPhaseActors(string originator, string taskCode, string phaseCode);
    }
}
