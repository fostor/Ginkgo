using System;
using System.Collections.Generic;
using System.Text;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    public class SearchTaskDto
    {
        public string TaskCode { get; set; }
        public string Originator { get; set; }
        public string Status { get; set; }
        public DateTime? FromDate { get; set; }
        public DateTime? ToDate { get; set; }
    }
}
