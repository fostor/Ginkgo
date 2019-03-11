using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskExecuteLog:CommonEntity
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
    }
}
