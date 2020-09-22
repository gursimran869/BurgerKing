using BurgerKing.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BurgerKing.Controllers
{
    public class StaffController : Controller
    {
        BurgerKingEntities1 BurgerKing = new BurgerKingEntities1();
        // GET: Recuritment
        public ActionResult ViewStaff()
        {
            return View(BurgerKing.Table_Staff.ToList());
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
        public ActionResult Create([Bind(Exclude = "id")] Table_Staff staff)
        {
            if (!ModelState.IsValid)
                return View();
            BurgerKing.Table_Staff.Add(staff);
            BurgerKing.SaveChanges();
            return RedirectToAction("ViewStaff");
        }

        // GET: Recuritment/Edit/5
        public ActionResult Edit(int id)
        {
            var SID = (from m in BurgerKing.Table_Staff where m.id == id select m).First();
            return View(SID);
        }

        // POST: Recuritment/Edit/5
        [HttpPost]
        public ActionResult Edit(Table_Staff staff)
        {
            var orignalRecord = (from m in BurgerKing.Table_Staff where m.id ==staff.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            BurgerKing.Entry(orignalRecord).CurrentValues.SetValues(staff);

            BurgerKing.SaveChanges();
            return RedirectToAction("ViewStaff");
        }

        // GET: Recuritment/Delete/5
        public ActionResult Delete(Table_Staff staff)
        {
            var d = BurgerKing.Table_Staff.Where(x => x.id == staff.id).FirstOrDefault();
            BurgerKing.Table_Staff.Remove(d);
            BurgerKing.SaveChanges();
            return RedirectToAction("ViewStaff");
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
