using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam1
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }
        //method for add button 
        protected void btnAddSt_Click(object sender, EventArgs e)
        {

            Page.Validate();
            if (Page.IsValid)
            {

              
            }
            
        }

        /*Clear the form
        * This methhods clears the form
        */
        private void clearForm()
        {
            tbStudentName.Text = "";
            tbBDate.Text = "";
            tbEmail.Text = "";
            ddlClass.SelectedIndex = 0;
            ddlClass.Items.Clear();

        }

       
        /*this method gets all  the data from the user form *
         * Notes:
         * Need to be checked
          
         * */
        private string getData()
        {

            string StudentName = tbStudentName.Text;
            string date = tbBDate.Text;
            string email = tbEmail.Text;
           

            string clss = ddlClass.SelectedValue;
            return (StudentName + "," + date + "," + email +  "," + clss);


        }

        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            string clss = ddlClass.SelectedValue;
            ddlClass.Items.Clear();
            if (clss.Equals("Freshman"))
            {

                ddlClass.Items.Add("Freshman");
                         
            }
          
            else
            {
                ddlClass.Items.Add("Sophomore");
            }
        }
    }
}