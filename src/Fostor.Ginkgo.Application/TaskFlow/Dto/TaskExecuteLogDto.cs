using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    [AutoMap(typeof(TaskExecuteLog))]
    public class TaskExecuteLogDto : CommonEntityDto
    {
        [MaxLength(30)]
        public string InstanceCode { get; set; }
        [MaxLength(10)]
        public string PhaseCode { get; set; }
        [MaxLength(40)]
        public string Actor { get; set; }
        [MaxLength(10)]
        public string HandleResult { get; set; }
        [MaxLength(1000)]
        public string Memo { get; set; }
        [AutoMapper.IgnoreMap]
        public string ActorName { get; set; }
        [AutoMapper.IgnoreMap]
        public string HandleResultName { get; set; }
    }
}
