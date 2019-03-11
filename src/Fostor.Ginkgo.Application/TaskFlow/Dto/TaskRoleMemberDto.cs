using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    [AutoMap(typeof(TaskRoleMember))]
    public class TaskRoleMemberDto : CommonEntityDto
    {
        [MaxLength(20)]
        public string TaskRole { get; set; }
        [MaxLength(40)]
        public string UserName { get; set; }
    }
}
