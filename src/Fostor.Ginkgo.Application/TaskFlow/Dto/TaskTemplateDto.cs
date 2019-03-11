using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    [AutoMap(typeof(TaskTemplate))]
    public class TaskTemplateDto : CommonEntityDto
    {
        [MaxLength(20)]
        public string TaskCode { get; set; }
        [MaxLength(30)]
        public string TaskName { get; set; }
        [MaxLength(100)]
        public string Description { get; set; }
        [MaxLength(500)]
        public string KeyInfoTemplate { get; set; }
        public bool? UseConditionControl { get; set; }
        [MaxLength(20)]
        public string Condition1Name { get; set; }
        [MaxLength(20)]
        public string Condition2Name { get; set; }
        [MaxLength(20)]
        public string Condition3Name { get; set; }
        public bool? CanAppendPhase { get; set; }
        public bool? Revocable { get; set; }
        [MaxLength(5)]
        public string ReturnType { get; set; }
        [MaxLength(5)]
        public string ResubmitType { get; set; }
        [MaxLength(100)]
        public string NotifyTitleTemplate { get; set; }
        [MaxLength(1000)]
        public string NotifyContentTemplate { get; set; }
        [MaxLength(500)]
        public string FormUriTemplate { get; set; }
        [MaxLength(500)]
        public string FinalServiceTemplate { get; set; }
        [MaxLength(500)]
        public string StartServiceTemplate { get; set; }
        public bool? IsDefaultForAllUser { get; set; }
    }
}
