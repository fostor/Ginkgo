using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    [AutoMap(typeof(TaskPhase))]
    public class TaskPhaseDto : CommonEntityDto
    {
        [MaxLength(20)]
        public string TaskCode { get; set; }
        [MaxLength(10)]
        public string PhaseCode { get; set; }
        [MaxLength(30)]
        public string PhaseName { get; set; }
        [MaxLength(20)]
        public string TaskRole { get; set; }
        [MaxLength(8000)]
        public string TaskUsers { get; set; }
        public bool? IsCountersignPhase { get; set; }
        public bool? IsSignInPhase { get; set; }
        public decimal? Condition1EndValue { get; set; }
        public decimal? Condition2EndValue { get; set; }
        public decimal? Condition3EndValue { get; set; }
        public bool? CanUpdateForm { get; set; }
        [MaxLength(500)]
        public string UpdateFormUriTemplate { get; set; }
        public bool? CanBatchHandle { get; set; }
        [MaxLength(500)]
        public string BatchHandleUriTemplate { get; set; }
        public bool? CanReject { get; set; }
        public bool? NeedToCallMiddleService { get; set; }
        [MaxLength(500)]
        public string PhaseServiceTemplate { get; set; }
    }
}
