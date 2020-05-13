using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PagedList;

namespace prj.Models.Dao
{
    public class categoryDao
    {
        private Database db;
        public categoryDao()
        {
            db = new Database();
        }
        public List<category> getAllCategory()
        {
            return db.categories.OrderByDescending(n => n.categoryID).ToList();
        }
    }
}