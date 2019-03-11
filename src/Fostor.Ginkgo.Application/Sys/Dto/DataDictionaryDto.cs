using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.Sys.Dto
{
    [AutoMap(typeof(DataDictionary))]
    public class DataDictionaryDto : CommonEntityDto
    {        
        [MaxLength(50)]
        public string CategoryCode { get; set; }        
        [MaxLength(50)]
        public string Key { get; set; }       
        [MaxLength(1000)]
        public string Value { get; set; }
    }
}
