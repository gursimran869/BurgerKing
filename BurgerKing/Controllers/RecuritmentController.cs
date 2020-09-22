using BurgerKing.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BurgerKing.Controllers
{
    public class RecuritmentController : Controller
    {
        BurgerKingEntities1 BurgerKing = new BurgerKingEntities1();
        // GET: Recuritment
        public ActionResult  ViewJobs()
        {
            return View(BurgerKing.Table_Recuritment.ToList());
        }
        public ActionResult Jobs()
        {
            return View(BurgerKing.Table_Recuritment.ToList());
        }

        // GET: Recuritment/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Recuritment/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Recuritment/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude ="id")] Table_Recuritment recuritment)
        {
            if (!ModelState.IsValid)
                return View();
            BurgerKing.Table_Recuritment.Add(recuritment);
            BurgerKing.SaveChanges();
            return RedirectToAction("ViewJobs");
        }

        // GET: Recuritment/Edit/5
        public ActionResult Edit(int id)
        {
            var RID = (from m in BurgerKing.Table_Recuritment where m.id == id select m).First();
            return View(RID);
        }

        // POST: Recuritment/Edit/5
        [HttpPost]
        public ActionResult Edit(Table_Recuritment recuritment)
        {
            var orignalRecord = (from m in BurgerKing.Table_Recuritment where m.id == recuritment.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            BurgerKing.Entry(orignalRecord).CurrentValues.SetValues(recuritment);

            BurgerKing.SaveChanges();
            return RedirectToAction("ViewJobs");
        }

        // GET: Recuritment/Delete/5
        public ActionResult Delete(Table_Recuritment recuritment)
        {
            var d =BurgerKing.Table_Recuritment.Where(x => x.id == recuritment.id).FirstOrDefault();
            BurgerKing.Table_Recuritment.Remove(d);
            BurgerKing.SaveChanges();
            return RedirectToAction("ViewJobs");
        }

        // POST: Recuritment/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
