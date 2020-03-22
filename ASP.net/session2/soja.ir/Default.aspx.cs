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
            txtUserName.Attributes.Add("placeholder", "نام کاربری را وارد کنید");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Label1.Text = txtUserName.Text;


        }
    }
}