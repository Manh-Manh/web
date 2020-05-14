using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prj.Models;
using System.Web.Mvc;
using prj.Models.Dao;
using System.Web.Script.Serialization;

namespace prj.Controllers
{
    public class CartController : Controller
    {
        private string CartSession = "CartSession";
        // GET: Cart
        public ActionResult Index()
        {
           
            var cart = Session[CartSession];
            var list = new List<CartItem>();

            if (cart!=null)
            {
                list = (List<CartItem>)cart;

            }

            return View(list);
        }
        public JsonResult Update(string JsonCart)
        {

            var jsonCart = new JavaScriptSerializer().Deserialize<List<CartItem>>(JsonCart);
            //var sessionCart = (List<CartItem>)Session[CartSession];
            Session[CartSession] = (List<CartItem>)jsonCart;
            return Json(new { status = true });
        }
        public ActionResult AddProduct(string productID, int quantity=1)
        {
            var cart =Session[CartSession];
            var product = new productDao().viewProductDetail(productID);
            if (cart != null)
            {
                var list = (List<CartItem>)cart;
                if (list.Exists(x=>x.Product.productID==productID))
                {
                    foreach (var item in list)
                    {
                        if (item.Product.productID.Equals(productID))
                        {
                            item.quantity += quantity;
                        }
                        
                    }
                }
                else
                {
                    var item = new CartItem(product, quantity);
                    list.Add(item);
                    
                }
                Session[CartSession] = list;
            }
            else
            {
                var item = new CartItem(product,quantity);
                var list = new List<CartItem>();
                list.Add(item);
                Session[CartSession] = list;
            }
            return RedirectToAction("Index");
        }
    }
}