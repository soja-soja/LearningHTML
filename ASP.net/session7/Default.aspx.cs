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

                // to create a new instance from a class
                // X varName = new X();

                DataSet1TableAdapters.MyUsersTableAdapter taUsers = new DataSet1TableAdapters.MyUsersTableAdapter();
                string UName = taUsers.getNameByUsername(Session["username"].ToString());

                lblTitle.Text = UName +  " به سایت من خوش اومدی" ;

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Session.Add("shoppingCart", btn.ToolTip);
            Response.Redirect("shoppingCart.aspx");
        }
    }
}