using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserInformation
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            tbName.Focus();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                String newUser = getData();
                lbOutome.Text = newUser;
                lBoxUsers.Items.Add(newUser);
                lbCount.Text = countUpdate().ToString();
                clearForm();
            }
        }

        /*
         * This methods clears the form.
         * */
         private void clearForm()
        {
            tbName.Text = "";
            tbDOB.Text = "";
            tbEmail.Text = "";
            ddlProvince.SelectedIndex = 0;
            ddlCity.Items.Clear();
        }

        /*
         * Update the hiddent variable in the client aspx page
         * <input type="hidden" id="hiddenCount" value="0" runat="server" />  
         * */
        private int countUpdate()
        {
            int count = Int32.Parse(hiddenCount.Value.ToString());
            count++;
            hiddenCount.Value = count.ToString();
            return count;
        }

        /* This method gets all the data from the user form
         * Notes:
         * City Need to be checked
         * */
        private string getData()
        {
            string name = tbName.Text;
            string DOB = tbDOB.Text;
            string email = tbEmail.Text;
            string province = ddlProvince.SelectedValue;
            string city = ddlCity.SelectedValue;
            return (name + "," + DOB + "," + email + "," + province + "," + city);
        }

        protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            string province = ddlProvince.SelectedValue;
            ddlCity.Items.Clear();
            if(province.Equals("Quebec"))
            {
                ddlCity.Items.Add("Montreal");
                ddlCity.Items.Add("Quebec City");
                ddlCity.Items.Add("Other");
            }
            else if (province.Equals("Ontario"))
            {
                ddlCity.Items.Add("Ottawa");
                ddlCity.Items.Add("Toronto");
                ddlCity.Items.Add("Other");
            }
            else if (province.Equals("Alberta"))
            {
                ddlCity.Items.Add("Calagry");
                ddlCity.Items.Add("Edmenton");
                ddlCity.Items.Add("Other");
            }
            else
            {
                ddlCity.Items.Add("Other");
            }

        }
    }
}