using System.ComponentModel.DataAnnotations;

namespace Fostor.Ginkgo.Users.Dto
{
    public class ChangeUserLanguageDto
    {
        [Required]
        public string LanguageName { get; set; }
    }
}