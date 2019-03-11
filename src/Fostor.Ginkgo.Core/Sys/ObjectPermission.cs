using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Fostor.Ginkgo.Sys
{
    public class ObjectPermission:CommonEntity
    {
        [Required]
        [MaxLength(255)]
        public string ObjectKey { get; set; }
        [Required]
        [MaxLength(20)]
        public string PermissionName { get; set; }
        [Required]
        [MaxLength(30)]
        public string DisplayName { get; set; }
    }
}
