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
            if (chbConsent.Checked)
            {
                Label1.Text = txtUserName.Text;
            }
            else
            {
                Label1.Text = "لطفا تیک بزنید!";
            }


            for (int i = 0; i < chbList.Items.Count; i++)
            {
                if(chbList.Items[i].Selected)
                {
                    Label1.Text += chbList.Items[i].Text + "-";
                }

            }

            
            


        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // RadioButtonList1.SelectedIndex
            // RadioButtonList1.SelectedValue
            // RadioButtonList1.SelectedItem.Text

            //Label1.Text = RadioButtonList1.Items[RadioButtonList1.SelectedIndex].Text;
            Label1.Text = RadioButtonList1.SelectedItem.Text;
        }
    }
}