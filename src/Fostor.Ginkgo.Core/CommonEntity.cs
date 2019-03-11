using System;
using System.Collections.Generic;
using System.Text;
using Abp.Timing;
using System.ComponentModel.DataAnnotations;
using Abp.Domain.Entities;

namespace Fostor.Ginkgo
{ 
    [Serializable]
    public class CommonEntity : CommonEntity<int>
    {

    }

    [Serializable]
    public abstract class CommonEntity<TPrimaryKey> : Entity<TPrimaryKey>
    {
        public virtual int? TenantId { get; set; }
        [MaxLength(30)]
        public virtual string LastModifier { get; set; }
        public virtual DateTime? LastModificationTime { get; set; }        
        [Required(AllowEmptyStrings =true)]
        [MaxLength(30)]
        public virtual string Creator { get; set; }
        public virtual DateTime? CreationTime { get; set; }
        protected CommonEntity()
        {
            CreationTime = Clock.Now;
        }
    }
}
