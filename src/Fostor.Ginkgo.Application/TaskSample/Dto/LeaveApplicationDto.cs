using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskSample.Dto
{
    [AutoMap(typeof(LeaveApplication))]
    public class LeaveApplicationDto:CommonEntityDto
    {
        [MaxLength(20)]
        public string AppliNumber { get; set; }
        [MaxLength(30)]
        public string Applicant { get; set; }
        [MaxLength(50)]
        public string Title { get; set; }
        [MaxLength(500)]
        public string Description { get; set; }
        [MaxLength(10)]
        public string LeaveType { get; set; }
        public DateTime? FromTime { get; set; }
        public DateTime? EndTime { get; set; }
        public decimal? TotalHours { get; set; }
        [MaxLength(10)]
        public string Status { get; set; }
        [AutoMapper.IgnoreMap]
        public string LeaveTypeName { get; set; }
        [AutoMapper.IgnoreMap]
        public string StatusName { get; set; }
    }
}
