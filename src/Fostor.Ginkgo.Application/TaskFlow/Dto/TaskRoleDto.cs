using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    [AutoMap(typeof(TaskRole))]
    public class TaskRoleDto : CommonEntityDto
    {
        [MaxLength(20)]
        public string RoleCode { get; set; }
        [MaxLength(30)]
        public string RoleName { get; set; }
    }
}
