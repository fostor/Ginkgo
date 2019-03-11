using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.Domain.Entities;

namespace Fostor.Ginkgo.Sys
{
    public class DataDictionary : CommonEntity,ISoftDelete
    {
        [Required]
        [MaxLength(50)]
        public string CategoryCode { get; set; }
        [Required(AllowEmptyStrings = true)]
        [MaxLength(50)]
        public string Key { get; set; }
        [Required(AllowEmptyStrings =true)]
        [MaxLength(1000)]
        public string Value { get; set; }
        [AutoMapper.IgnoreMap]
        public virtual bool IsDeleted { get; set; }
        [AutoMapper.IgnoreMap]
        [MaxLength(30)]
        public virtual string Deleter { get; set; }
        [AutoMapper.IgnoreMap]
        public virtual DateTime? DeletionTime { get; set; }
    }
}
