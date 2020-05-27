using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using WebApplication5.EF;

namespace WebApplication5.Dao
{
    public class UserDao
    {
        private Database db = null;
        public UserDao()
        {
            db = new Database();
        }
        public long Insert(User entity)
        {
            db.User.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }
        public bool Login(string userName, string passWord)
        {
            var result = db.User.Count(x => x.UserName == userName && x.PassWord == passWord);
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public User GetbyID(string userName)
        {
            return db.User.SingleOrDefault(x => x.UserName == userName);
        }
    }
}
