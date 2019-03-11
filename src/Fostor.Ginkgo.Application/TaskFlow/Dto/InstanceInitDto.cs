using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Abp.Application.Services.Dto;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    public class InstanceInitDto
    {       
        [MaxLength(20)]
        public string TaskCode { get; set; } 
        public decimal? Condition1Value { get; set; }      
        public decimal? Condition2Value { get; set; }      
        public decimal? Condition3Value { get; set; }
        [MaxLength(600)]
        public string KeyInfo { get; set; }
        [MaxLength(600)]
        public string FormUri { get; set; } 
        [MaxLength(100)]
        public string NotifyTitle { get; set; }       
        [MaxLength(600)]
        public string FinalService { get; set; }
        [MaxLength(600)]
        public string StartService { get; set; }
        [MaxLength(600)]
        public string AbortService { get; set; }
        [MaxLength(600)]
        public string PhaseService { get; set; }
    }
}
