using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Abp.Application.Services.Dto;
using Abp.AutoMapper;

namespace Fostor.Ginkgo.TaskFlow.Dto
{
    [AutoMapFrom(typeof(TaskPhase))]
    public class TaskPhaseRouteQueryDto:EntityDto
    {
        [MaxLength(20)]
        public string TaskCode { get; set; }
        [MaxLength(10)]
        public string PhaseCode { get; set; }
        [MaxLength(30)]
        public string PhaseName { get; set; }       
        [AutoMapper.IgnoreMap]
        public string Actors { get; set; }
    }
}
