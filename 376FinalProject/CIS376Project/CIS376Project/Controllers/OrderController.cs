using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using CIS376Project.model;
using CIS376Project.Model;
using System.IO;
using Newtonsoft.Json;

namespace CIS376Project.Controllers
{
    [Route("api/[controller]")]
    public class OrderController : Controller
    {
        private menu_databaseContext _db;
        public OrderController(menu_databaseContext db)
        {
            _db = db;
        }

        [HttpGet("[action]")]
        public IEnumerable<Items> Appetizers()
        {
            return _db.Items.Where(x => x.ProductType == ItemType.Appetizers).ToList();
        }
        [HttpGet("[action]")]
        public IEnumerable<Items> Entrees()
        {
            return _db.Items.Where(x => x.ProductType == ItemType.Entrees).ToList();
        }
        [HttpGet("[action]")]
        public IEnumerable<Items> Sides()
        {
            return _db.Items.Where(x => x.ProductType == ItemType.Sides).ToList();
        }
        [HttpGet("[action]")]
        public IEnumerable<Items> Drinks()
        {
            return _db.Items.Where(x => x.ProductType == ItemType.Drinks).ToList();
        }
        [HttpGet("[action]")]
        public IEnumerable<Items> Desserts()
        {
            return _db.Items.Where(x => x.ProductType == ItemType.Desserts).ToList();
        }
        [HttpGet("[action]")]
        public IEnumerable<Orders> PreviousOrders()
        {
            return _db.Orders.ToList();
        }
        [HttpGet("PreviousOrders/{id}")]
        public IEnumerable<PreviousOrderItem> PreviousOrders([FromRoute(Name ="id")] int id)
        {
            var orderItems = _db.Orderitems.Where(x => x.OrderId == id);
            var OrderList = new List<PreviousOrderItem>();
            foreach(var item in orderItems)
            {
                var dbItem = _db.Items.Single(x => x.Id == item.ItemId);
                var orderItem = new PreviousOrderItem();
                orderItem.Id = dbItem.Id;
                orderItem.ImageUrl = dbItem.ImageUrl;
                orderItem.Price = dbItem.Price;
                orderItem.Title = dbItem.Title;
                orderItem.Descript = dbItem.Descript;
                orderItem.Quantity = item.Quantity;
                orderItem.TotalPrice = (Math.Round(dbItem.Price * item.Quantity,2));
                OrderList.Add(orderItem);
            }
            return OrderList;
        }
        [HttpPost("[action]")]
        public void PlaceOrder()
        {
            var reader = new StreamReader(HttpContext.Request.Body);
            var data = reader.ReadToEnd();
            var dataObject = JsonConvert.DeserializeObject<OrderDto>(data);
            double totalPrice = 0;
            foreach(var product in dataObject.cartProducts)
            {
                var dbProduct = _db.Items.Single(x => x.Id == product.id);
                totalPrice += dbProduct.Price * product.quantity;
            }
            totalPrice = Math.Round(totalPrice, 2);
            var newOrder = new Orders();
            newOrder.CustomerName = dataObject.customerName;
            newOrder.TotalPrice = (float)totalPrice;
            _db.Orders.Add(newOrder);
            _db.SaveChanges();
            foreach(var product in dataObject.cartProducts)
            {
                var newOrderItem = new Orderitems();
                newOrderItem.ItemId = product.id;
                newOrderItem.OrderId = newOrder.Id;
                newOrderItem.Quantity = product.quantity;
                _db.Orderitems.Add(newOrderItem);
            }
            _db.SaveChanges();
        }

    }
}
