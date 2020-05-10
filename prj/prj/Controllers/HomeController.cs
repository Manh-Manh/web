using prj.Models.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;

namespace prj.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(int page=1, int pageSize=9)
        {
            var dao = new productDao();
            var model = dao.getAllProducts(page,pageSize);
            return View(model);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page nha.";

            return View();
        }
        public ActionResult Header()
        {
            ViewBag.Message = "Header";
            return View();
        }
        public ActionResult ItemDetail(string prid="PRO0001")
        {
            var dao = new productDao();
            var model = dao.viewProductDetail(prid);
            return View(model);
        }

    }
}