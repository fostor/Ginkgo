using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    [AutoMap(typeof(TaskNotifyLog))]
    public class TaskNotifyLogDto : CommonEntityDto
    {
        [MaxLength(30)]
        public string InstanceCode { get; set; }
        [MaxLength(10)]
        public string PhaseCode { get; set; }
        [MaxLength(100)]
        public string NotifyTitle { get; set; }
        [MaxLength(1000)]
        public string NotifyContent { get; set; }
        [MaxLength(8000)]
        public string NotifyUserNames { get; set; }
        [MaxLength(10)]
        public string Status { get; set; }
    }
}
