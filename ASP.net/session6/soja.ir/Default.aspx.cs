using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace soja.ir
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // using QueryString
            //if (Request.QueryString["status"] != null &&
            //    Request.QueryString["status"].ToString() == "Login")
            //{ 
            //}

            if (Session["status"] != null &&
                Session["status"].ToString() == "Login")
            { 
                //successful login

            }
            else
            {
                Response.Redirect("login.aspx");
            }
            
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            if (MultiView1.ActiveViewIndex < 2)
                MultiView1.ActiveViewIndex += 1;
            else
                MultiView1.ActiveViewIndex = 0;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            DataSet1TableAdapters.MyUsersTableAdapter usda = new DataSet1TableAdapters.MyUsersTableAdapter();
            usda.Insert(txtUsername.Text, txtPass.Text, txtName.Text);
            txtUsername.Text = txtPass.Text = "";
            btnAdd.Text = "اطلاعات ثبت شد!";


    
        }
    }
}