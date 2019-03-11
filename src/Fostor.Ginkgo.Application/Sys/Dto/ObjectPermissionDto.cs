using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.Sys.Dto
{
    [AutoMap(typeof(ObjectPermission))]
    public class ObjectPermissionDto : CommonEntityDto
    {        
        [MaxLength(255)]
        public string ObjectKey { get; set; }        
        [MaxLength(20)]
        public string PermissionName { get; set; }        
        [MaxLength(30)]
        public string DisplayName { get; set; }
    }
}
