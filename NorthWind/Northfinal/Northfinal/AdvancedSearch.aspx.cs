using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Northfinal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            CustomersInfo.SelectCommand = "SELECT * FROM [Customers] WHERE (["+ ddlFields.SelectedValue +"] = @CustomerID)";







        }

       
    }
}