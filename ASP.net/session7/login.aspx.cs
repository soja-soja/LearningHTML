using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace soja.ir
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.MyUsersTableAdapter users = new DataSet1TableAdapters.MyUsersTableAdapter();
            int numberOfUsers = users.LoginQuery(txtUser.Text, txtPass.Text).GetValueOrDefault();

            if (numberOfUsers > 0)
            {
                // login successful!
                Session.Add("status", "Login");
                Session.Add("username", txtUser.Text);
                Response.Redirect("Default.aspx");
                
                // using QueryString
                //Response.Redirect("Default.aspx?status=Login");
                

            }
            else
            {
                // Failed!
                txtPass.Text = "";
                txtUser.Text = "";
                lblErr.Text = "Login failed! Please try again!";
                txtUser.BorderColor = System.Drawing.Color.Red;

            }



        }
    }
}