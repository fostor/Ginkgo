using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Fostor.Ginkgo.TaskFlow
{
    public class TaskOriginator:CommonEntity
    {
        [MaxLength(20)]
        public string TaskCode { get; set; }
        [MaxLength(40)]
        public string Originator { get; set; }
    }
}
