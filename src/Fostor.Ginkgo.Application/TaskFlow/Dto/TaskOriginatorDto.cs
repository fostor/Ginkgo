using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    [AutoMap(typeof(TaskOriginator))]
    public class TaskOriginatorDto : CommonEntityDto
    {
        [MaxLength(20)]
        public string TaskCode { get; set; }
        [MaxLength(40)]
        public string Originator { get; set; }
    }
}
