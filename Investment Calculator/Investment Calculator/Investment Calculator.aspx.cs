using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Investment_Calculator
{
    public partial class Investment_Calculator : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            //dropdown populated from 50 to 500 each time we open the page.
            if(!IsPostBack)
            for (int i=50; i<=500; i+=50 )
            {
                ddlMonthlyInvestment.Items.Add(i.ToString());
            }



        }

        protected void ddlMonthlyInvestment_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}