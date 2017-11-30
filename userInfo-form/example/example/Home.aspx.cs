using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace example
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid) {

                String newUser = getData();
                lblResult.Text = newUser;
                lbxUser.Items.Add(newUser);
                lblCount.Text = countUpdate().ToString();
                clearForm();
            }
           
        }
        /*Clear the form
         * This methhods clears the form
         */
         private void clearForm()
        {
            tbName.Text = "";
            tbDateOfBirth.Text = "";
            tbEmail.Text = "";
            dplProvince.SelectedIndex = 0;
            dplCity.Items.Clear();

        }

        /*Update the value hidden in the client aspx page
         * <input type="hidden" id="hiddenCount" value="0" runat="server" />*/
        private int countUpdate()
        {
            int count = Int32.Parse(hiddenCount.Value.ToString());
            count++;
            hiddenCount.Value = count.ToString();// because the count is passed as value no reference
            return count;
        }
        /*this method gets all  the data from the user form *
         * Notes:
         * Need to be chacked
         * 
         * 
         * */
        private string getData()
        {

            string name = tbName.Text;
            string date = tbDateOfBirth.Text;
            string email = tbEmail.Text;
            string province = dplProvince.SelectedValue;

            string city = dplCity.SelectedValue;
            return (name + "," + date + "," + email + "," + province + "," + city);


        }

        protected void dplProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            string province = dplProvince.SelectedValue;
            dplCity.Items.Clear();
            if (province.Equals("Quebec"))
            {
              
                dplCity.Items.Add("Montreal");
                dplCity.Items.Add("Quebec City");
                dplCity.Items.Add("Other");
            }
            else if (province.Equals("Ontario"))
            {

                dplCity.Items.Add("Ottawa");
                dplCity.Items.Add("Toronto");
                dplCity.Items.Add("Other");

            }
            else if (province.Equals("Alberta"))
            {

                dplCity.Items.Add("Calgary");
                dplCity.Items.Add("Edmenton");
                dplCity.Items.Add("Other");
            }
            else
            {
                dplCity.Items.Add("Other");
            }
        }
    }
}