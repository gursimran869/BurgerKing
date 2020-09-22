using BurgerKing.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BurgerKing.Controllers
{
    public class OrderController : Controller
    {
        // GET: Order
        BurgerKingEntities1 BurgerKing = new BurgerKingEntities1();
        // GET: Recuritment
        public ActionResult ViewOrder()
        {
            return View(BurgerKing.Table_Order.ToList());
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
        public ActionResult Create([Bind(Exclude = "id")]Table_Order order)
        {
            if (!ModelState.IsValid)
                return View();
            BurgerKing.Table_Order.Add(order);
            BurgerKing.SaveChanges();
            return RedirectToAction("ViewOrder");
        }

        // GET: Recuritment/Edit/5
        public ActionResult Edit(int id)
        {
            var OID = (from m in BurgerKing.Table_Order where m.id == id select m).First();
            return View(OID);
        }

        // POST: Recuritment/Edit/5
        [HttpPost]
        public ActionResult Edit(Table_Order order)
        {
            var orignalRecord = (from m in BurgerKing.Table_Order where m.id == order.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            BurgerKing.Entry(orignalRecord).CurrentValues.SetValues(order);

            BurgerKing.SaveChanges();
            return RedirectToAction("ViewOrder");
        }

        // GET: Recuritment/Delete/5
        public ActionResult Delete(Table_Order order)
        {
            var d = BurgerKing.Table_Order.Where(x => x.id == order.id).FirstOrDefault();
            BurgerKing.Table_Order.Remove(d);
            BurgerKing.SaveChanges();
            return RedirectToAction("ViewOrder");
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
