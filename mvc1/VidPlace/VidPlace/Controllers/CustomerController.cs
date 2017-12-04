using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VidPlace.Models;



namespace VidPlace.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Customer()
        {





            var c = new Customer();
                
            c.Name = "MojganCustomer";


            return View(c);
   
        }
    }
}