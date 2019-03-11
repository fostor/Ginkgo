using System.Collections.Generic;
using Fostor.Ginkgo.Roles.Dto;

namespace Fostor.Ginkgo.Web.Models.Common
{
    public interface IPermissionsEditViewModel
    {
        List<FlatPermissionDto> Permissions { get; set; }
    }
}