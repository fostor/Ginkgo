using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskInstance:CommonEntity
    {
        [MaxLength(30)]
        public string InstanceCode { get; set; }
        [MaxLength(20)]
        public string TaskCode { get; set; }
        [MaxLength(30)]
        public string TaskName { get; set; }
        [MaxLength(600)]
        public string KeyInfo { get; set; }
        [MaxLength(600)]
        public string FormUri { get; set; }
        public bool? UseConditionControl { get; set; }
        [MaxLength(20)]
        public string Condition1Name { get; set; }
        public decimal? Condition1Value { get; set; }
        [MaxLength(20)]
        public string Condition2Name { get; set; }
        public decimal? Condition2Value { get; set; }
        [MaxLength(20)]
        public string Condition3Name { get; set; }
        public decimal? Condition3Value { get; set; }               
        [MaxLength(40)]
        public string Originator { get; set; }        
        [MaxLength(10)]
        public string CurrentPhaseCode { get; set; }
        [MaxLength(8000)]
        public string CurrentActors { get; set; }
        public bool? CanBatchHandle { get; set; }
        [MaxLength(600)]
        public string BatchHandleUri { get; set; }
        public bool? CanReject { get; set; }
        public bool? CanUpdateForm { get; set; }
        [MaxLength(600)]
        public string UpdateFormUri { get; set; }
        public bool? IsCountersigning { get; set; }
        public bool? IsSignIn { get; set; }
        [MaxLength(10)]
        public string ReturnPhaseCode { get; set; }
        [MaxLength(8000)]
        public string ReturnActors { get; set; }
        [MaxLength(10)]
        public string Status { get; set; }
        public bool? CanAppendPhase { get; set; }
        public bool? Revocable { get; set; }
        [MaxLength(5)]
        public string ReturnType { get; set; }
        [MaxLength(5)]
        public string ResubmitType { get; set; }
        [MaxLength(100)]
        public string NotifyTitle { get; set; }
        [MaxLength(1000)]
        public string NotifyContent { get; set; }
        [MaxLength(1000)]
        public string FinalService { get; set; }
        [MaxLength(1000)]
        public string StartService { get; set; }
        [MaxLength(1000)]
        public string AbortService { get; set; }
        [MaxLength(1000)]
        public string PhaseService { get; set; }
        public bool? NeedToCallMiddleService { get; set; }
        public DateTime? LastPhaseHandleTime { get; set; }
    }
}
