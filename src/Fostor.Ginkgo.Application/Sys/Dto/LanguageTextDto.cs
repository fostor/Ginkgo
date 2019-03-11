using System;
using System.Collections.Generic;
using System.Text;
using Abp.Application.Services.Dto;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;
using Abp.Localization;

namespace Fostor.Ginkgo.Sys.Dto
{
    [AutoMap(typeof(ApplicationLanguageText))]
    public class LanguageTextDto:EntityDto<long>
    {
        public int? TenantId { get; set; }
        [Required]
        public string LanguageName { get; set; }
        [Required]
        public string Source { get; set; }
        [Required]
        public string Key { get; set; }
        [Required(AllowEmptyStrings =true)]
        public string Value { get; set; }
        public DateTime? LastModificationTime { get; set; }
        public long? LastModifierUserId { get; set; }
        public DateTime CreationTime { get; set; }
        public long? CreatorUserId { get; set; }
    }
}
