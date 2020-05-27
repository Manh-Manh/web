using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prj.Models;
namespace prj.Models.Dao
{
    public class UserDao
    {
        private Database db = null;
        public UserDao()
        {
            db = new Database();
        }
        public long Insert(customer entity)
        {
            db.customers.Add(entity);
            db.SaveChanges();
            return Convert.ToInt64(entity.customerID);
        }
        public bool Login(string email, string passWord)
        {
            var result = db.customers.Count(x => x.email.Trim() == email && x.password.Trim() == passWord);
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public customer GetbyID(string email)
        {
            return db.customers.SingleOrDefault(n=>n.email.Trim()==email.Trim());
        }
    }

}