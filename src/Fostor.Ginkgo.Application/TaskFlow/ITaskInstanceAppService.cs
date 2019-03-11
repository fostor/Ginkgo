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
    public interface ITaskInstanceAppService:IAsyncCrudAppService<TaskInstanceDto>
    {
        Task<TaskInstanceDto> InstanceInit(InstanceInitDto input);
        Task<List<ActorDto>> GetNextPhaseActors(string instanceCode);
        Task<List<ActorDto>> GetReturnedActors(string instanceCode);
        List<TaskInstanceDto> SearchMyRequest(SearchMyRequestDto input);
        List<TaskInstanceDto> SearchToDoList(SearchToDoListDto input);

        int GetToDoCount();
        List<TaskInstanceDto> Search(SearchTaskDto input);
        List<TaskInstanceDto> SearchMonitorList(SearchMonitorListDto input);

        TaskActionResultDto SendFirst(TaskSendDto input);
        TaskActionResultDto Send(TaskSendDto input);
        int Revoke(string instanceCode);
    }
}
