﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace VidPlace
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapMvcAttributeRoutes();


            /*
            //localhost:50913/media/released/2017/12
            //in  constraints, we should insert 2 digits for month to be right
            routes.MapRoute(
             name: "media-released",
             url: "media/released/{year}/{month}",
             defaults: new { controller = "media", action = "released"},
             constraints : new { year = @"\d{4}", month = @"^(0?[1-9]|1[012])$" }
         );
         */




            routes.MapRoute(
               name: "Default",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
           );





         /*
            routes.MapRoute(
             name: "media-index",
             url: "media/index/{pageindex}/{sortby}",
             defaults: new { controller = "media", action = "index" }
         );
         */
        }
    }
}
