using System;
using System.Collections.Generic;

namespace CIS376Project.model
{
    public partial class Orders
    {
        public int Id { get; set; }
        public float TotalPrice { get; set; }
        public string CustomerName { get; set; }
    }
}
