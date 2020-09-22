using BurgerKing.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BurgerKing.Controllers
{
    public class AdminSectionController : Controller
    {
        // GET: AdminSection
        public ActionResult AdminLogin()
        {
            return View();
        }


        public ActionResult LoginAdmin(AdminLogin login)
        {
            //Pass the data to store the record into the table 

            DataTable tbl = new DataTable();
            Contact db = new Contact();

            tbl = db.Login("select * from Table_User where Name_ID='" + login.Email + "'and Password_ID='" + login.Password + "'");

            if (tbl.Rows.Count > 0)
            {
                return View("Right");
            }
            else
            {
                return View("Wrong");
            }



        }

        public ActionResult Right()
        {
            return View();
        }

        public ActionResult Wrong()
        {
            return View();
        }



    }
}