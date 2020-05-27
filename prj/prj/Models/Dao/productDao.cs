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
        
        public IEnumerable<product> getAllProducts(int page,int pageSize,string searchString, string categoryID)
        {
            searchString = searchString.Trim();
            categoryID = categoryID.Trim();
            var model = db.products.OrderByDescending(n => n.productID).ToPagedList(page, pageSize);
            if (!String.IsNullOrEmpty(searchString))
            {
                model= db.products.Where(n => n.productName.Contains(searchString)).OrderBy(n => n.productID).ToPagedList(page, pageSize);
            }
            if (!String.IsNullOrEmpty(categoryID))
            {
                model = db.products.Where(n => n.categoryID.Equals(categoryID)).OrderBy(n => n.productID).ToPagedList(page, pageSize);
            }
            return model;
        }
        public product viewProductDetail(string productID)
        {
            productID = productID.Trim();
            return db.products.Find(productID);
            
        }
        /*public IEnumerable<product> searchFor(string searchString)
        {
            if (!String.IsNullOrEmpty(searchString))
            {
                return db.products.Where(n => n.productName.Contains(searchString)).OrderByDescending(n => n.productID).ToPagedList(1, 9);
            }
            else { return db.products.OrderByDescending(n => n.productID).ToPagedList(1, 9) ; }
        }
        public IEnumerable<product> filterCategory(string categoryID)
        {
            categoryID = categoryID.Trim();
            if (!String.IsNullOrEmpty(categoryID))
            {
                return db.products.Where(n => n.categoryID.Equals(categoryID)).OrderBy(n => n.productID).ToPagedList(1, 9);
            }
            else { return db.products.OrderBy(n => n.productID).ToPagedList(1, 9); }
           
        }*/
        public string Insert(product pr)
        {
            
            var prid = "PRO"+db.products.ToList().Count.ToString();
            pr.productID = prid;
            db.products.Add(pr);
            db.SaveChanges();
            return pr.productID.ToString();
        }
    }
}