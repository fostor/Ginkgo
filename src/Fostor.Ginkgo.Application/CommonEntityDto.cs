using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Abp.Application.Services.Dto;
using Abp.AutoMapper;

namespace Fostor.Ginkgo
{
    public abstract class CommonEntityDto : EntityDto
    {
        public int? TenantId { get; set; }
        [MaxLength(30)]
        public string LastModifier { get; set; }
        public DateTime? LastModificationTime { get; set; }
        [MaxLength(30)]
        public string Creator { get; set; }
        public DateTime? CreationTime { get; set; }
    }
}
