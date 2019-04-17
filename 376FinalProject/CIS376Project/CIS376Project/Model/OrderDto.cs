using CIS376Project.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CIS376Project.Model
{
    public class OrderDto
    {
        public IEnumerable<ProductDto> cartProducts { get; set; }
        public string customerName { get; set; }
    }
    public class ProductDto
    {
       public int id { get; set; }
       public int quantity { get; set; }
    }
    public class PreviousOrderItem : Items
    {
        public int Quantity { get; set; }
        public double TotalPrice { get; set; }
    }
}
