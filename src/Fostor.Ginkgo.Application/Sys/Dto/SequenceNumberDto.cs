using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.Sys.Dto
{
    [AutoMap(typeof(SequenceNumber))]
    public class SequenceNumberDto : CommonEntityDto
    {        
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
    }
}
