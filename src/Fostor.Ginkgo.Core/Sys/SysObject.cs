using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.Domain.Entities;

namespace Fostor.Ginkgo.Sys
{
    public class SysObject : CommonEntity,ISoftDelete
    {
        [Required]
        [MaxLength(255)]
        public string ObjectKey { get; set; }
        [MaxLength(200)]
        public string ParentKey { get; set; }
        [Required]
        [MaxLength(30)]
        public string DisplayName { get; set; }
        [MaxLength(30)]
        public string Icon { get; set; }
        public bool? IsMenuItem { get; set; }
        public int? MenuLevel { get; set; }
        public int? SortCode { get; set; }
        [MaxLength(255)]
        public string Uri { get; set; }
        public bool? IsEnable { get; set; }
        [AutoMapper.IgnoreMap]
        public virtual bool IsDeleted { get; set; }
        [AutoMapper.IgnoreMap]
        [MaxLength(30)]
        public virtual string Deleter { get; set; }
        [AutoMapper.IgnoreMap]
        public virtual DateTime? DeletionTime { get; set; }
    }
}
