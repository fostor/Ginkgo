using System;
using System.Collections.Generic;
using System.Text;
using Abp.Application.Services;
using Fostor.Ginkgo.TaskSample.Dto;
using Abp.Domain.Repositories;
using System.Threading.Tasks;
using Abp.Application.Services.Dto;
using System.Linq;
using Fostor.Ginkgo.Sessions;
using Abp.AutoMapper;
using Fostor.Ginkgo.Sys;

namespace Fostor.Ginkgo.TaskSample
{
    public interface ILeaveApplicationAppService : IAsyncCrudAppService<LeaveApplicationDto>
    {
        List<LeaveApplicationDto> Search(LeaveSearchDto input);
        int UpdateStatus(LeaveApplicationStatusDto input);
    }
}
