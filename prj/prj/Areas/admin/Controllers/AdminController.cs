using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using prj.Models.Dao;
using prj.Models;

namespace prj.Areas.admin.Controllers
{
    public class AdminController : Controller
    {
        // GET: admin/Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Product(int page=1,int pagesize=9)
        {
            var dao = new productDao();
            var model = dao.getAllProducts(page,pagesize,"","");
            return View(model);
        }
        public ActionResult Edit(string prid)
        {
            return View();
        }
        [HttpGet]
        public ActionResult Insert()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Insert(product pr)
        {
            if(ModelState.IsValid)
            {
                var dao = new productDao();
                if(dao.Insert(pr)!="")
                {
                    RedirectToAction("Product", "Admin");
                }
            }
            return View("Insert");
        }
    }
}