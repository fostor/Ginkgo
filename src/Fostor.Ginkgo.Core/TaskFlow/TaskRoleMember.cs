using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskRoleMember:CommonEntity
    {
        [MaxLength(20)]
        public string TaskRole { get; set; }
        [MaxLength(40)]
        public string UserName { get; set; }
    }
}
