using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.Domain.Entities;

namespace Fostor.Ginkgo.Sys
{
    public class SequenceNumber : CommonEntity,ISoftDelete
    {
        [Required]
        [MaxLength(40)]
        public string NumberCode { get; set; }
        [MaxLength(20)]
        public string DateStringSpec { get; set; }
        [MaxLength(5)]
        public string Prefix { get; set; }
        [MaxLength(5)]
        public string Infix { get; set; }
        [MaxLength(5)]
        public string Suffix { get; set; }
        [Required]
        public int? SeqLength { get; set; }
        public int Sequence { get; set; }
        [MaxLength(40)]
        public string LatestNumber { get; set; }
        [AutoMapper.IgnoreMap]
        public virtual bool IsDeleted { get; set; }
        [AutoMapper.IgnoreMap]
        [MaxLength(30)]
        public virtual string Deleter { get; set; }
        [AutoMapper.IgnoreMap]
        public virtual DateTime? DeletionTime { get; set; }
    }
}
