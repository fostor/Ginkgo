using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Abp.Application.Services.Dto;

namespace Fostor.Ginkgo.Sys.Dto
{
    public class DataConfigDto : EntityDto
    {
        [MaxLength(50)]
        public string Code { get; set; }

        [MaxLength(1000)]
        public string Name { get; set; }
    }
}
