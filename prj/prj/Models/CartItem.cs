using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prj.Models;

namespace prj.Models
{
    public class CartItem
    {
        public product Product { set; get; }
        public int quantity { set; get; }

        public CartItem(product product, int quantity)
        {
            this.Product = product;
            this.quantity = quantity;
        }
    }
}