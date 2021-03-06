﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VidPlace.Models;

namespace VidPlace.Controllers
{
    public class MediaController : Controller
    {
        // GET: Media
        public ActionResult Random()
        {

            var media = new Media();
            media.Name = "Mojganmedia";


            return View(media);
        }



        public ActionResult ActionResultDemo()
        {
            // return Content("Helllo from  ActionResultDemo");
            // return HttpNotFound();

            /////////////////////////contoller-action(class-model)

            return RedirectToAction("Customer", "Customer");
        }




        public ActionResult edit(int id)
        {
            //write this :
            ////////localhost:50913/media/edit/100
            return Content("Provide ID =" + id);
        }






        [Route("media/index/{ pageindex:range(1,100)}/{sortby maxlength(10)} ")]

        public ActionResult index(int? pageindex, string sortby)
        {
             //by default it shows me the ---pageindex=114 ---and  sortby = "Sort by Mojgan "
            if (!pageindex.HasValue) pageindex = 90;
            if (String.IsNullOrWhiteSpace(sortby)) sortby = "Sort by Mojgan ";

            
            //but here i add  pageindex and sortby manually
            //write this :
            ////localhost:50913/media/index?pageindex=10&sortby=Date

            return Content("pageindex =" + pageindex + "sortby =" + sortby);
        }


        



        /////////////////////////url ==== media/released/2017/6
         
           [Route("media/released/{year}/{month} ")]

        public ActionResult released(int year, int month)
        {
            
            return Content("this year is  =" + year + "month =" + month);
        }
    }
}


