using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Fostor.Ginkgo.Users.Dto;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.UserSelector
{
    public class UserSelectorViewModel
    {
        public List<UserDto> Users { get; set; }

        public string TagName { get; set; }

        public string SelectedValue { get; set; }

        public bool IsRequired { get; set; }

        public bool IsDisabled { get; set; }
    }
}
