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
using Fostor.Ginkgo.Users;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskPhaseAppService:AsyncCommonAppService<TaskPhase,TaskPhaseDto>,ITaskPhaseAppService
    {
        private readonly IRepository<TaskPhase> _repository;
        private readonly IRepository<TaskOriginatorRoute> _repoRoute;        
        private readonly IRepository<TaskRoleMember> _repoMembers;
        private readonly IUserAppService _userAppService;
        public TaskPhaseAppService(IRepository<TaskPhase> repository,            
            IRepository<TaskOriginatorRoute> repoRoute,
            IRepository<TaskRoleMember> repoMembers,
            IUserAppService userAppService) : base(repository)
        {
            _repository = repository;           
            _repoRoute = repoRoute;
            _repoMembers = repoMembers;
            _userAppService = userAppService;
        }

        public List<TaskPhaseDto> GetByTaskCode(string taskCode)
        {
            return _repository.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskCode == taskCode)
                .MapTo<List<TaskPhaseDto>>();
        }

        public List<TaskPhaseRouteQueryDto> GetMyTaskFlow(string taskCode)
        {            
            var listPhase= _repository.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskCode == taskCode)
                .MapTo<List<TaskPhaseRouteQueryDto>>();
            var listOri = _repoRoute.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskCode == taskCode && x.Originator == AbpSession.UserName);
            foreach(var x in listPhase)
            {
                foreach(var y in listOri)
                {
                    if (y.PhaseCode == x.PhaseCode) x.Actors = y.Actors;
                }
            }
            return listPhase;
        }     

        public async Task<List<ActorDto>> GetFlowPhaseUsers(string taskCode, string phaseCode)
        {
            List<ActorDto> actors = new List<ActorDto>();
            List<string> list = new List<string>();           
            var phase = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId
            && x.TaskCode == taskCode && x.PhaseCode == phaseCode);

            if (phase != null)
            {
                var users = phase.TaskUsers ?? "";
                if (users.Length > 0)
                {
                    list = users.Split(",").ToList();
                }
                var role = phase.TaskRole ?? "";
                var members = _repoMembers.GetAllList(x => x.TenantId == AbpSession.TenantId && x.TaskRole == role);
                if (members != null && members.Count() > 0)
                {
                    foreach (var x in members)
                    {
                        if (!list.Contains(x.UserName)) list.Add(x.UserName);
                    }
                }
            }
            var userList = (await _userAppService.GetAll(new Users.Dto.PagedUserResultRequestDto { MaxResultCount = int.MaxValue })).Items.ToList();
            foreach (var x in list)
            {
                foreach (var y in userList)
                {
                    if (y.UserName == x)
                    {
                        actors.Add(new ActorDto { UserName = x, FullName = y.FullName });
                    }
                }
            }
            return actors.OrderBy(x => x.UserName).ToList();
        }

    }
}
