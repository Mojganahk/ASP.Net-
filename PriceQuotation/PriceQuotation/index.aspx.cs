using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PriceQuotation
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //to show the validation work properly we have to add this line of code
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btCalculate_Click(object sender, EventArgs e)
        {
            decimal discountAmount = Decimal.Parse(tbSalesPrice.Text) * Decimal.Parse(tbDiscountPercent.Text) / 100;
            decimal totalPrice = Decimal.Parse(tbSalesPrice.Text) - discountAmount;

            lbDiscountAmount.Text = discountAmount.ToString();
            lbTotalPrice.Text = totalPrice.ToString();
        }
    }
}