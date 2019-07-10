using System;
using System.Collections.Generic;
using System.Text;

namespace Fostor.Ginkgo.Sys.Dto
{
    public class ObjectNodeDto
    {
        public string Id { get; set; }
        public string ObjectKey { get; set; }
        public string Text { get; set; }
        public List<ObjectNodeDto> Nodes { get; set; }
        public ObjectNodeDto()
        {
            Nodes = new List<ObjectNodeDto>();
        }
    }
}
