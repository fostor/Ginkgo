using Abp.Application.Services.Dto;

namespace Fostor.Ginkgo.Roles.Dto
{
    public class PagedRoleResultRequestDto : PagedResultRequestDto
    {
        public string Keyword { get; set; }
    }
}

