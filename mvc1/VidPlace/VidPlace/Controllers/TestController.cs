using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VidPlace.Models;

namespace VidPlace.Controllers
{
    public class TestController : Controller
    {
        // GET: Test
        // method called index
        
        public ActionResult Index()
        {
            return View();
        }





        //Get string 
        public string getString() {
            return "Helllllo Mojgan - test control";
        }



        


        //get customer 
        public Customer getCustomer() {

            Customer c = new Customer();
            c.Name = "Mojgan";
            //c.Address = "5522 queen mary";

            return c;


        }



        //getview
        public ActionResult GetView() {

            return View("my view ");  

        }



        //getview
        public ActionResult GetDeveloper()
        {
            //this name "GetDeveloper" should match the cshtml
            return View("GetDeveloper");

        }







       


    }



  







    
    }

   








