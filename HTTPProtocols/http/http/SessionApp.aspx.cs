using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace http
{
    public partial class SessionApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("numberOfApps" + Application["numberOfApps"]);
            Response.Write("<br/>");
            Response.Write("number Of Sessions" + Application["numberOfSessions"]);
        

            
        }
    }
}