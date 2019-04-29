using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Fostor.Ginkgo.TaskSample
{
    [Table("LeaveApplications",Schema ="dbo")]  //如果使用oracle数据库，可以通过Table和Column特性实现表名和栏位名的转换匹配
    public class LeaveApplication:CommonEntity
    {
        [Column("AppliNumber",TypeName ="nvarchar(20)")]
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
        
    }
}
