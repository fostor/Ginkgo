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
    public interface ITaskTemplateAppService:IAsyncCrudAppService<TaskTemplateDto>
    {
        List<TaskTemplateDto> Search(TaskTemplateSearchDto input);
        List<TaskTemplateDto> GetMyFlowList();
    }
}
