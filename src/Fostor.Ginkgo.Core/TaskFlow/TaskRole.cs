using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskRole:CommonEntity
    {
        [MaxLength(20)]
        public string RoleCode { get; set; }
        [MaxLength(30)]
        public string RoleName { get; set; }
    }
}
