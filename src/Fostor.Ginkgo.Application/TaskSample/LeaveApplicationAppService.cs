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
    public class LeaveApplicationAppService : AsyncCommonAppService<LeaveApplication, LeaveApplicationDto>, ILeaveApplicationAppService
    {
        private readonly IRepository<LeaveApplication> _repository;
        private readonly IDataDictionaryAppService _dataDictionaryAppService;
        private readonly ISequenceNumberAppService _sequenceNumberAppService;
        public LeaveApplicationAppService(IRepository<LeaveApplication> repository,
            IDataDictionaryAppService dataDictionaryAppService,
            ISequenceNumberAppService sequenceNumberAppService) : base(repository)
        {
            _repository = repository;
            _dataDictionaryAppService = dataDictionaryAppService;
            _sequenceNumberAppService = sequenceNumberAppService;
        }

        public override Task<LeaveApplicationDto> Create(LeaveApplicationDto input)
        {
            input.AppliNumber = _sequenceNumberAppService.GetSequenceNumberStringByCode("LeaveApplicationNumber");
            return base.Create(input);
        }

        public List<LeaveApplicationDto> Search(LeaveSearchDto input)
        {
            var list = _repository.GetAllList(x => x.TenantId == AbpSession.TenantId
            && ((input.Applicant ?? "").Length > 0 ? x.Applicant == input.Applicant : 1 == 1)
            && (input.FromDate.HasValue ? x.CreationTime >= input.FromDate.Value : 1 == 1)
            && (input.ToDate.HasValue ? x.CreationTime < input.ToDate.Value.AddDays(1) : 1 == 1)
            ).MapTo<List<LeaveApplicationDto>>();
            var listType = _dataDictionaryAppService.GetDataConfigByCode("LeaveType");
            var listStatus = _dataDictionaryAppService.GetDataConfigByCode("LeaveAppliStatus");
            foreach (var x in list)
            {
                foreach(var y in listType)
                {
                    if (x.LeaveType == y.Code) { x.LeaveTypeName = y.Name; }
                }
                foreach(var z in listStatus)
                {
                    if (x.Status == z.Code) { x.StatusName = z.Name; }
                }
            }
            return list;
        }
        public int UpdateStatus(LeaveApplicationStatusDto input)
        {
            int n = 0;
            var leave = _repository.FirstOrDefault(x => x.TenantId == AbpSession.TenantId && x.AppliNumber == input.AppliNumber);
            if (leave != null)
            {
                leave.Status = input.StatusCode;
                _repository.Update(leave);
                n = 1;
            }
            return n;
        }
    }

    public class LeaveSearchDto
    {
        public string Applicant { get; set; }
        public DateTime? FromDate { get; set; }
        public DateTime? ToDate { get; set; }
    }

    public class LeaveApplicationStatusDto
    {
        public string AppliNumber { get; set; }
        public string StatusCode { get; set; }
    }
}
