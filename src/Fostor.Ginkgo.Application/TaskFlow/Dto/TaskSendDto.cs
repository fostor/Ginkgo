using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Abp.Application.Services.Dto;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    public class TaskSendDto
    {
        [MaxLength(30)]
        public string InstanceCode { get; set; }
        [MaxLength(1000)]
        public string Memo { get; set; }
        [MaxLength(10)]
        public string HandleResult { get; set; }        
        [MaxLength(4000)]
        public string NextActors { get; set; }       
        public string ReturnedActor { get; set; }
    }
}
