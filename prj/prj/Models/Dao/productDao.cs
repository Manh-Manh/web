using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prj.Models;
using PagedList;

namespace prj.Models.Dao
{
   
    public class productDao
    {
        private Database db = null;
        public productDao()
        {
            db = new Database();
        }
        
        public IEnumerable<product> getAllProducts(int page=1, int pageSize=9)
        {
            
            return db.products.OrderByDescending(n => n.productID).ToPagedList(page, pageSize);
        }
        public product viewProductDetail(string productID)
        {
            return db.products.Find(productID);
            
        }
    }
}