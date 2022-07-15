using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DatabaseFirstApproach.Controllers
{
    public class HomeController : Controller
    {
        DatabaseFirstApproachEFDbEntities db = new DatabaseFirstApproachEFDbEntities();
        public ActionResult Index()
        {
            var data =  db.Employees.ToList();
            return View(data);
        }

        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Employee e)
        {
                db.Employees.Add(e);
                int a = db.SaveChanges();
                if(a > 0)
                {
                    TempData["Message"] = "Data Inserted Successfully";
                    return RedirectToAction("Index");
                }
                else
                {
                    TempData["Message"] = "Data Not Inserted";
                    return RedirectToAction("Index");
                }
        }

        public ActionResult Edit(int id)
        {
            var data = db.Employees.Where(x => x.Id == id).FirstOrDefault();
            return View(data);
        }
        [HttpPost]
        public ActionResult Edit(Employee e)
        {
            db.Entry(e).State = EntityState.Modified;
            int a = db.SaveChanges();

            if(a > 0)
            {
                TempData["Message"] = "Data Updated Successfully";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["Message"] = "Data Not Updated.";
                return RedirectToAction("Index");
            }
        }

        public ActionResult Delete(int id)
        {
            var data = db.Employees.Where(x => x.Id == id).FirstOrDefault();
            return View(data);
        }
        [HttpPost]
        public ActionResult Delete(Employee e)
        {
            db.Entry(e).State = EntityState.Deleted;
            int a = db.SaveChanges();
            if(a > 0)
            {
                TempData["Message"] = "Data Deleted Successfully";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["Message"] = "Data Not Deleted";
                return RedirectToAction("Index");
            }
        }

        public ActionResult Details(int id)
        {
            var data = db.Employees.Where(x => x.Id == id).FirstOrDefault();
            return View(data);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}