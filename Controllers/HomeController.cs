using BurgerKing.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BurgerKing.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
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


        [HttpPost]
        public ActionResult QueryRecord(Contact contact)
        {
            //Pass the data to store the record into the table 

            
            contact.sendMessage("insert into Table_Contact values('" + contact.Name + "','"+contact.Email+"','" +contact.Phone + "','"+contact.Subject+"','" + contact.Message + "')");
            return View("done");




        }


        public ActionResult done()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


        public ActionResult Menu()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


    }
}