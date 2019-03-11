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
using Fostor.Ginkgo.Users;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskExecuteAppService:AsyncCommonAppService<TaskExecuteLog,TaskExecuteLogDto>,ITaskExecuteAppService
    {
        private readonly IRepository<TaskExecuteLog> _repository;
        private readonly IUserAppService _userAppService;
        private readonly IDataDictionaryAppService _dataDictionaryAppService;
        public TaskExecuteAppService(IRepository<TaskExecuteLog> repository,            
            IUserAppService userAppService,
            IDataDictionaryAppService dataDictionaryAppService) : base(repository)
        {
            _repository = repository;
            _userAppService = userAppService;
            _dataDictionaryAppService = dataDictionaryAppService;
        }

        public async Task<List<TaskExecuteLogDto>> GetByInstanceCode(string instanceCode)
        {
            var list = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId 
            && x.InstanceCode == instanceCode).OrderBy(x=>x.CreationTime).ToList().MapTo<List<TaskExecuteLogDto>>();
            var resultList = _dataDictionaryAppService.GetDataConfigByCode("TaskHandleResult");
            var userList = (await _userAppService.GetAll(new Users.Dto.PagedUserResultRequestDto { MaxResultCount = int.MaxValue })).Items.ToList();
            foreach(var x in list)
            {
                foreach(var y in resultList)
                {
                    if (y.Code == x.HandleResult) x.HandleResultName = y.Name;
                }
                foreach(var z in userList)
                {
                    if (z.UserName == x.Actor) x.ActorName = z.FullName;
                }
            }
            return list;
        }
    }
}
