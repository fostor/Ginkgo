using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Fostor.Ginkgo.TaskFlow.Dto;

namespace Fostor.Ginkgo.Web.Areas.TaskFlow.Models.Task
{
    public class TaskViewModel
    {
        public TaskInstanceDto Instance { get; set; }
        public List<ActorDto> NextPhaseActors { get; set; }
        public List<ActorDto> ToReturnActors { get; set; }
        public List<TaskExecuteLogDto> ExecuteLogs { get; set; }
    }
}
