using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Fostor.Ginkgo.Sys.Dto;

namespace Fostor.Ginkgo.Web.Areas.Admin.Models
{
    public class SysObjectViewModel
    {
        public SysObjectDto SysObject { get; set; }
        public List<ObjectPermissionDto> AllPermissions { get; set; }
    }
}
