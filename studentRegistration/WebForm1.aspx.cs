using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentRegistration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

 

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text;
                string email = txtEmail.Text;
                string password = txtPassword.Text;
                string phone = txtPhone.Text;
                string address = txtAddress.Text;
                string gender = rblGender.SelectedValue;
                string course = ddlCourse.SelectedValue;

                // Simulating data storage (In real applications, save to database)
                string message = $"Registration Successful!\nName: {name}\nEmail: {email}\nPhone: {phone}\nAddress: {address}\nGender: {gender}\nCourse: {course}";

                // Displaying message (You may redirect to another page or show success message)
                lblMessage.Text = message;
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}
