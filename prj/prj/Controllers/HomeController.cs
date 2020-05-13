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
        public ActionResult Index(int page=1, int pageSize=9,string searchStr="",string categoryID="")
        {
            var dao = new productDao();
            var model = dao.getAllProducts(page,pageSize,searchStr,categoryID);
            ViewBag.searchString = searchStr;
            ViewBag.categoryID = categoryID;
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
            var dao2 = new categoryDao();
            var model = dao.viewProductDetail(prid);
            var lstCat = dao2.getAllCategory();
            ViewBag.lstCat = lstCat;
            return View(model);
        }
        [ChildActionOnly]
        public PartialViewResult listCategory()
        {
            var dao = new categoryDao();
            var model = dao.getAllCategory();
            return PartialView(model);
        }

    }
}