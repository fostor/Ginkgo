using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Abp.AutoMapper;
using Fostor.Ginkgo.Sessions;
using Microsoft.AspNetCore.Mvc;
using Fostor.Ginkgo.Users;
using Fostor.Ginkgo.Users.Dto;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.UserSelector
{
    public class UserSelectorViewComponent : GinkgoViewComponent
    {
        private readonly IUserAppService _userAppService;

        public UserSelectorViewComponent(IUserAppService userAppService)
        {
            _userAppService = userAppService;
        }

        public async Task<IViewComponentResult> InvokeAsync(string tagName, string selectedValue = "", string required = "0", string disabled = "0")
        {
            var users = new List<UserDto>();
            users = (await _userAppService.GetAll(new PagedUserResultRequestDto { MaxResultCount = int.MaxValue }))
                   .Items.Where(x=>x.UserName != "admin").ToList();

            var viewModel = new UserSelectorViewModel
            {
                Users = users,
                TagName = tagName,
                SelectedValue = selectedValue,
                IsRequired = required == "1" ? true : false,
                IsDisabled = disabled == "1" ? true : false
            };

            return View("Default",viewModel);
        }
    }
}
