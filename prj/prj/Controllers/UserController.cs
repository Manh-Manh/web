using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using prj.Models;
using prj.Models.Dao;

namespace prj.Controllers
{
   
    public class UserController : Controller
    {
        public static customer user;
        // GET: User
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(Login model)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var result = dao.Login(model.email, model.PassWord);
                if (result)
                {
                    user = dao.GetbyID(model.email);
                    Session["User"] = user.fullName.ToString();
                    
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "đăng nhập không đúng");
                }
            }
            return View("Index");
        }
    }
}