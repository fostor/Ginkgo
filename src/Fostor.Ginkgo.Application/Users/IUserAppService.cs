using System.Threading.Tasks;
using Abp.Application.Services;
using Abp.Application.Services.Dto;
using Fostor.Ginkgo.Roles.Dto;
using Fostor.Ginkgo.Users.Dto;
using Microsoft.AspNetCore.Identity;

namespace Fostor.Ginkgo.Users
{
    public interface IUserAppService : IAsyncCrudAppService<UserDto, long, PagedUserResultRequestDto, CreateUserDto, UserDto>
    {
        Task<ListResultDto<RoleDto>> GetRoles();

        Task ChangeLanguage(ChangeUserLanguageDto input);
        Task<IdentityResult> ResetUserPassword(string userName, string password);

        UserDto GetByUserName(string userName);
        Task<IdentityResult> ChangeCurrentUserPassword(string currentPassword, string newPassword);
    }
}
