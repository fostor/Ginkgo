using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.Sys.Dto
{
    [AutoMap(typeof(SysObject))]
    public class SysObjectDto : CommonEntityDto
    {        
        [MaxLength(255)]
        public string ObjectKey { get; set; }
        [MaxLength(200)]
        public string ParentKey { get; set; }        
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
        public List<ObjectPermissionDto> RefPermissions { get; set; }
    }
}
