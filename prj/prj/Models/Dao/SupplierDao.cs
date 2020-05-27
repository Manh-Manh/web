using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prj.Models;
using prj.Models.Dao;
namespace prj.Models.Dao
{
    public class SupplierDao
    {
        private Database db;
        public SupplierDao()
        {
            db = new Database();
        }
        public List<supplier> getAllSupplier()
        {
            return db.suppliers.OrderByDescending(n => n.supplierID).ToList();
        }
        public string getIdByName(string name)
        {
            var sup = db.suppliers.Find(name);
            return sup.supplierID.Trim();
        }
    }
}