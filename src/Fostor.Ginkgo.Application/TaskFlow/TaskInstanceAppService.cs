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
using Abp.Auditing;


namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskInstanceAppService : AsyncCommonAppService<TaskInstance, TaskInstanceDto>, ITaskInstanceAppService
    {
        private readonly IRepository<TaskInstance> _repository;
        private readonly IRepository<TaskTemplate> _repoTemplate;
        private readonly IRepository<TaskPhase> _repoPhase;        
        private readonly ISequenceNumberAppService _sequenceNumberAppService;
        private readonly IUserAppService _userAppService;
        private readonly IRepository<TaskExecuteLog> _repoExecute;
        private readonly ITaskOriginatorRouteAppService _taskOriginatorRouteAppService;
        private readonly ITaskPhaseAppService _taskPhaseAppService;
        private readonly IDataDictionaryAppService _dataDictionaryAppService;
        public TaskInstanceAppService(IRepository<TaskInstance> repository,            
            ISequenceNumberAppService sequenceNumberAppService,
            IRepository<TaskTemplate> repoTemplate,
            IRepository<TaskPhase> repoPhase,
            IUserAppService userAppService,
            IRepository<TaskExecuteLog> repoExecute,
            ITaskOriginatorRouteAppService taskOriginatorRouteAppService,
            ITaskPhaseAppService taskPhaseAppService,
            IDataDictionaryAppService dataDictionaryAppService) : base(repository)
        {
            _repository = repository;           
            _sequenceNumberAppService = sequenceNumberAppService;
            _repoTemplate = repoTemplate;
            _repoPhase = repoPhase;
            _userAppService = userAppService;
            _repoExecute = repoExecute;
            _taskOriginatorRouteAppService = taskOriginatorRouteAppService;
            _taskPhaseAppService = taskPhaseAppService;
            _dataDictionaryAppService = dataDictionaryAppService;
        }

        public async Task<TaskInstanceDto> InstanceInit(InstanceInitDto input)
        {            
            var taskTmpl = _repoTemplate.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.TaskCode == input.TaskCode);
            if (taskTmpl == null)
            {
                throw new Abp.UI.UserFriendlyException("TheTaskCodeIsNotExistsInTemplates.");
            }
            TaskInstanceDto task = new TaskInstanceDto
            {
                TaskCode = input.TaskCode,
                TaskName = taskTmpl.TaskName,
                UseConditionControl = taskTmpl.UseConditionControl,
                Condition1Name = taskTmpl.Condition1Name,
                Condition1Value = input.Condition1Value,
                Condition2Name = taskTmpl.Condition2Name,
                Condition2Value = input.Condition2Value,
                Condition3Name = taskTmpl.Condition3Name,
                Condition3Value = input.Condition3Value,
                KeyInfo = input.KeyInfo,
                FormUri = input.FormUri,
                CanAppendPhase = taskTmpl.CanAppendPhase,
                NotifyTitle = input.NotifyTitle,
                NotifyContent = "您好!有流程任务需要您处理.流程类型:" + taskTmpl.TaskName + ".概要信息:" + input.KeyInfo,
                FinalService = input.FinalService,
                StartService = input.StartService,
                AbortService = input.AbortService,
                PhaseService = input.PhaseService,
                Status = "1",
                Revocable = taskTmpl.Revocable,
                ReturnType = taskTmpl.ReturnType,
                ResubmitType = taskTmpl.ResubmitType,
                Originator = AbpSession.UserName,
                LastPhaseHandleTime = Abp.Timing.Clock.Now,
                CurrentActors = AbpSession.UserName,
                CurrentPhaseCode = "00"
            };
            //以FormUri作为数据key
            var t = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.FormUri == input.FormUri);
            if (t != null)
            {
                task.Id = t.Id;
                task.InstanceCode = t.InstanceCode;
                return await Update(task);
            }
            else
            {
                task.InstanceCode = _sequenceNumberAppService.GetSequenceNumberStringByCode("TaskInstanceCode");
                return await Create(task);
            }
        }

        public async Task<List<ActorDto>> GetNextPhaseActors(string instanceCode)
        {
            var list = new List<ActorDto>();
            var task = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.InstanceCode == instanceCode);
            if (task == null)
            {
                throw new Abp.UI.UserFriendlyException("TaskInstanceIsNotExists.");
            }
            var originator = task.Originator;
            //1.先查询出节点路由的下一节点，没有下一节点(当前节点为最后节点)的返回空
            var phases = _repoPhase.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskCode == task.TaskCode).OrderBy(x => x.PhaseCode).ToList();
            var nextPhase = phases.FirstOrDefault(x => int.Parse(x.PhaseCode) > int.Parse(task.CurrentPhaseCode));
            if (nextPhase == null)
            {
                return list;
            }
            //2.查询出下一节点的操作人列表            
            List<string> listActors = new List<string>();
            var actors = _taskOriginatorRouteAppService.GetFlowPhaseActors(originator, task.TaskCode, nextPhase.PhaseCode);
            if ((actors ?? "").Length > 0)  //2.1在TaskOriginatorRoute里有配置的，取配置数据
            {
                listActors = actors.Split(",").ToList();
                var userList = (await _userAppService.GetAll(new Users.Dto.PagedUserResultRequestDto { MaxResultCount = int.MaxValue })).Items.ToList();
                foreach (var x in listActors)
                {
                    foreach (var y in userList)
                    {
                        if (y.UserName == x)
                        {
                            list.Add(new ActorDto { UserName = x, FullName = y.FullName });
                        }
                    }
                }
            }
            else  //2.2没有配置的，取TaskPhase的配置
            {
                list = await _taskPhaseAppService.GetFlowPhaseUsers(task.TaskCode, nextPhase.PhaseCode);
            }
            return list;
        }

        public async Task<List<ActorDto>> GetReturnedActors(string instanceCode)
        {
            var list = new List<ActorDto>();
            var task = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.InstanceCode == instanceCode);
            if (task == null)
            {
                throw new Abp.UI.UserFriendlyException("TaskInstanceIsNotExists.");
            }
            var originator = task.Originator;
            var oriUser = _userAppService.GetByUserName(originator);
            //默认退回发起人
            list.Add(new ActorDto { UserName = "00|" + originator, FullName = oriUser.FullName });
            //选择退回节点时
            if (task.ReturnType == "2")
            {
                var executeLogs = _repoExecute.GetAllList(x => x.TenantId == AbpSession.TenantId
                && x.InstanceCode == instanceCode).OrderBy(x => x.PhaseCode).ToList();
                var userList = (await _userAppService.GetAll(new Users.Dto.PagedUserResultRequestDto { MaxResultCount = int.MaxValue })).Items.ToList();
                foreach (var x in executeLogs)
                {
                    if (x.Actor != originator)
                    {
                        foreach (var y in userList)
                        {
                            if (y.UserName == x.Actor)
                            {
                                list.Add(new ActorDto { UserName = x.PhaseCode + "|" + x.Actor, FullName = y.FullName });
                            }
                        }
                    }
                }
            }

            return list;
        }

        public TaskActionResultDto SendFirst(TaskSendDto input)
        {
            TaskActionResultDto actionResult = new TaskActionResultDto();
            var task = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.InstanceCode == input.InstanceCode);
            if (task == null)
            {
                throw new Abp.UI.UserFriendlyException("TaskInstanceIsNotExists.");
            }
            var originator = task.Originator;
            var phases = _repoPhase.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskCode == task.TaskCode).OrderBy(x => x.PhaseCode).ToList();
            var nextPhase = phases.FirstOrDefault(x => int.Parse(x.PhaseCode) > int.Parse(task.CurrentPhaseCode));
            //查询原记录插入到执行记录
            _repoExecute.Insert(new TaskExecuteLog
            {
                InstanceCode = task.InstanceCode,
                PhaseCode = task.CurrentPhaseCode,
                Actor = originator,
                HandleResult = "0",
                Memo = input.Memo,
                TenantId = AbpSession.TenantId,
                CreationTime = Abp.Timing.Clock.Now,
                Creator = originator
            });
            //更新新路由控制
            task.CurrentActors = input.NextActors;
            task.CurrentPhaseCode = nextPhase.PhaseCode;
            task.LastPhaseHandleTime = Abp.Timing.Clock.Now;
            task.NeedToCallMiddleService = nextPhase.NeedToCallMiddleService;
            //如果有StartService的返回调用端继续执行
            actionResult.FollowedServiceConfig = task.StartService;
            //发出通知            
            //to do
            actionResult.ResultCode = 1;
            return actionResult;
        }

        public  TaskActionResultDto Send(TaskSendDto input)
        {
            TaskActionResultDto actionResult = new TaskActionResultDto();            
            var task = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.InstanceCode == input.InstanceCode);
            if (task == null)
            {
                throw new Abp.UI.UserFriendlyException("TaskInstanceIsNotExists.");
            }
            var originator = task.Originator;
            var phases = _repoPhase.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskCode == task.TaskCode).OrderBy(x => x.PhaseCode).ToList();
            var nextPhase = phases.FirstOrDefault(x => int.Parse(x.PhaseCode) > int.Parse(task.CurrentPhaseCode));
            //查询原记录插入到执行记录
            var handleResult = input.HandleResult;
            if(handleResult=="1" && AbpSession.UserName == originator)
            {
                handleResult = "0";
            }
            _repoExecute.Insert(new TaskExecuteLog
            {
                InstanceCode = task.InstanceCode,
                PhaseCode = task.CurrentPhaseCode,
                Actor = AbpSession.UserName,
                HandleResult = handleResult,
                Memo = input.Memo,
                TenantId = AbpSession.TenantId,
                CreationTime = Abp.Timing.Clock.Now,
                Creator = originator
            });
            //更新新路由控制
            task.LastPhaseHandleTime = Abp.Timing.Clock.Now;
            if (input.HandleResult == "1")
            {
                if (nextPhase != null)
                {
                    task.CurrentActors = input.NextActors;
                    task.CurrentPhaseCode = nextPhase.PhaseCode;
                    task.Status = "1";//进行中
                    //当前节点需要调用中间服务时
                    if (task.NeedToCallMiddleService == true) actionResult.FollowedServiceConfig = task.PhaseService;
                    //更新下一节点是否需要调用中间服务
                    task.NeedToCallMiddleService = nextPhase.NeedToCallMiddleService;
                }
                else
                {
                    task.CurrentActors = "";
                    task.CurrentPhaseCode = "";
                    task.Status = "9";//完成
                    //如果有finalservice
                    actionResult.FollowedServiceConfig = task.FinalService;
                }

            }
            else if (input.HandleResult == "2")
            {
                string returnPhase = input.ReturnedActor.Substring(0, 2);
                string returnActor = input.ReturnedActor.Substring(3);
                task.CurrentActors = returnActor;
                task.CurrentPhaseCode = returnPhase;
                task.Status = "2";//退回                
            }else if (input.HandleResult == "3")
            {                
                task.CurrentActors = "";
                task.CurrentPhaseCode = "";
                task.Status = "6";//终止 
                actionResult.FollowedServiceConfig = task.AbortService;
            }

            //发出通知            
            //to do
            actionResult.ResultCode=1;
            return actionResult;
        }

        public int Revoke(string instanceCode)
        {
            int n = 0;
            var task = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.InstanceCode == instanceCode);
            if (task == null)
            {
                throw new Abp.UI.UserFriendlyException("TaskInstanceIsNotExists.");
            }
            if (task.Status != "1")
            {
                throw new Abp.UI.UserFriendlyException("TaskInstanceCannotBeRevocableInCurrentStatus.");
            }
            var originator = task.Originator;           
            //查询原记录插入到执行记录
            _repoExecute.Insert(new TaskExecuteLog
            {
                InstanceCode = task.InstanceCode,
                PhaseCode = task.CurrentPhaseCode,
                Actor = originator,
                HandleResult = "5",
                //Memo = input.Memo,
                TenantId = AbpSession.TenantId,
                CreationTime = Abp.Timing.Clock.Now,
                Creator = originator
            });
            //更新新路由控制
            task.CurrentActors = originator;
            task.CurrentPhaseCode = "00";
            task.Status = "7";
            task.LastPhaseHandleTime = Abp.Timing.Clock.Now;

            //发出通知            
            //to do
            n = 1;
            return n;
        }

        public List<TaskInstanceDto> SearchMyRequest(SearchMyRequestDto input)
        {            
            var list = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
            && x.Originator == AbpSession.UserName
            && ((input.TaskCode ?? "").Length > 0 ? x.TaskCode == input.TaskCode : 1 == 1)
            && ((input.Status ?? "").Length > 0 ? x.Status == input.Status : 1 == 1)
            && (input.FromDate.HasValue ? x.CreationTime > input.FromDate : 1 == 1)
            && (input.ToDate.HasValue ? x.CreationTime < input.ToDate.Value.AddDays(1) : 1 == 1)).MapTo<List<TaskInstanceDto>>();
            var statusList = _dataDictionaryAppService.GetDataConfigByCode("TaskInstanceStatus");
            foreach (var x in list)
            {
                foreach (var y in statusList)
                {
                    if (y.Code == x.Status) x.StatusName = y.Name;
                }
            }
            return list;
        }

        public List<TaskInstanceDto> SearchToDoList(SearchToDoListDto input)
        {
            var userName = AbpSession.UserName;
            var list = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
            && (x.CurrentActors.Contains(",") ? (x.CurrentActors.Contains("," + userName + ",") || x.CurrentActors.StartsWith(userName + ",") || x.CurrentActors.EndsWith("," + userName)) : x.CurrentActors == userName)
            && ((input.TaskCode ?? "").Length > 0 ? x.TaskCode == input.TaskCode : 1 == 1)
            && ((input.Originator ?? "").Length > 0 ? x.Originator == input.Originator : 1 == 1)
           ).MapTo<List<TaskInstanceDto>>();
            var statusList = _dataDictionaryAppService.GetDataConfigByCode("TaskInstanceStatus");
            foreach (var x in list)
            {
                foreach (var y in statusList)
                {
                    if (y.Code == x.Status) x.StatusName = y.Name;
                }
            }
            return list;
        }
        [DisableAuditing]
        public int GetToDoCount()
        {
            int n = 0;
            var userName = AbpSession.UserName;
            var list = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
            && (x.CurrentActors.Contains(",") ? (x.CurrentActors.Contains("," + userName + ",") || x.CurrentActors.StartsWith(userName + ",") || x.CurrentActors.EndsWith("," + userName)) : x.CurrentActors == userName));
            if(list != null && list.Count() > 0)
            {
                n = list.Count();
            }
            return n;
        }

        public List<TaskInstanceDto> Search(SearchTaskDto input)
        {
            var list = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
           && ((input.Originator ?? "").Length > 0 ? x.Originator == input.Originator : 1 == 1)
           && ((input.TaskCode ?? "").Length > 0 ? x.TaskCode == input.TaskCode : 1 == 1)
           && ((input.Status ?? "").Length > 0 ? x.Status == input.Status : 1 == 1)
           && (input.FromDate.HasValue ? x.CreationTime > input.FromDate : 1 == 1)
           && (input.ToDate.HasValue ? x.CreationTime < input.ToDate.Value.AddDays(1) : 1 == 1)).MapTo<List<TaskInstanceDto>>();
            var statusList = _dataDictionaryAppService.GetDataConfigByCode("TaskInstanceStatus");
            foreach (var x in list)
            {
                foreach (var y in statusList)
                {
                    if (y.Code == x.Status) x.StatusName = y.Name;
                }
            }
            return list;
        }

        public List<TaskInstanceDto> SearchMonitorList(SearchMonitorListDto input)
        {
            int n0, n1;
            switch (input.WaitTimeType)
            {
                case "1":
                    n0 = 0; n1 = 1;
                    break;
                case "2":
                    n0 = 1; n1 = 3;
                    break;
                case "3":
                    n0 = 3; n1 = 7;
                    break;
                case "4":
                    n0 = 7; n1 = 10000;
                    break;
                default:
                    n0 = 0; n1 = 0;
                    break;
            }
            var list = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
                && (x.Status == "1" || x.Status == "2" || x.Status == "8")
             && ((input.Originator ?? "").Length > 0 ? x.Originator == input.Originator : 1 == 1)
             && ((input.TaskCode ?? "").Length > 0 ? x.TaskCode == input.TaskCode : 1 == 1)
             && ((input.WaitTimeType ?? "").Length > 0 ? (x.LastPhaseHandleTime.Value.AddDays(n0) < Abp.Timing.Clock.Now
             && x.LastPhaseHandleTime.Value.AddDays(n1) >= Abp.Timing.Clock.Now) : 1 == 1)
             ).MapTo<List<TaskInstanceDto>>();
            var statusList = _dataDictionaryAppService.GetDataConfigByCode("TaskInstanceStatus");
            foreach (var x in list)
            {
                foreach (var y in statusList)
                {
                    if (y.Code == x.Status) x.StatusName = y.Name;
                }
            }
            return list;
        }
    }
}
