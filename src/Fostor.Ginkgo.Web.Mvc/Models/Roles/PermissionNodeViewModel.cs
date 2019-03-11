using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fostor.Ginkgo.Web.Models.Roles
{
    [Serializable]
    public class PermissionNodeViewModel
    {
        public string Id { get; set; }

        public string Text { get; set; }

        public State State { get; set; }

        public List<PermissionNodeViewModel> Nodes { get; set; }

        public PermissionNodeViewModel()
        {
            Nodes = new List<PermissionNodeViewModel>();
            State = new State { Checked = false };
        }
    }
    [Serializable]
    public class State
    {
        public bool Checked { get; set; }
    }
}
