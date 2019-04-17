using System;
using System.Collections.Generic;

namespace CIS376Project.model
{
    public partial class Orderitems
    {
        public int Id { get; set; }
        public int ItemId { get; set; }
        public int OrderId { get; set; }
        public int Quantity { get; set; }
    }
}
