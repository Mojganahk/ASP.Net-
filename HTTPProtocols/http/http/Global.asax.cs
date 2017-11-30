using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace http
{
    public class Global : System.Web.HttpApplication
    {



        protected void Application_Start(object sender, EventArgs e)
        {
            //create app state variable
            Application["numberOfApps"] = 0;
            Application["numberOfSessions"] = 0;


            Application["numberOfApps"] = (int)Application["numberOfApps"] + 1;
        }





        protected void Session_Start(object sender, EventArgs e)
        {

            Application["numberOfSessions"] = (int)Application["numberOfSessions"] + 1;
        }



        protected void Session_End(object sender, EventArgs e)
        {

            Application["numberOfSessions"] = (int)Application["numberOfSessions"] - 1;
        }
    }
}