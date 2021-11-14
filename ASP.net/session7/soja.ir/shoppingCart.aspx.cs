using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace soja.ir
{
    public partial class shoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
    }
}