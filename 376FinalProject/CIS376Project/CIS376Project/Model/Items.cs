using CIS376Project.Model;
using System;
using System.Collections.Generic;

namespace CIS376Project.model
{
    public partial class Items
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public ItemType ProductType { get; set; }
        public string Descript { get; set; }
        public string ImageUrl { get; set; }
        public float Price { get; set; }
    }
}
