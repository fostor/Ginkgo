using Fostor.Ginkgo.Sessions.Dto;

namespace Fostor.Ginkgo.Web.Views.Shared.Components.SideBarUserArea
{
    public class SideBarUserAreaViewModel
    {
        public GetCurrentLoginInformationsOutput LoginInformations { get; set; }

        public bool IsMultiTenancyEnabled { get; set; }

        public string GetShownLoginName()
        {
            var userName = "<span id=\"HeaderCurrentUserName\">" + LoginInformations.User.UserName
                + "[" + LoginInformations.User.Surname + LoginInformations.User.Name + "]" + "</span>";

            return userName;
            //if (!IsMultiTenancyEnabled)
            //{
            //    return userName;
            //}

            //return LoginInformations.Tenant == null
            //    ? "Host\\" + userName
            //    : LoginInformations.Tenant.Name + "\\" + userName;
        }
    }
}
