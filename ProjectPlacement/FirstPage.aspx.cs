using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FirstPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Text = "Select Category";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "Select Category")
            Response.Redirect(DropDownList1.SelectedValue);
        else { }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedValue == "Admin")
        {
            Button1.Text = "Continue as an Admin";
        }
        else if (DropDownList1.SelectedItem.Text == "Select Category")
        { }
        else
        {
            Button1.Text = "Continue as " + DropDownList1.SelectedItem.Text;
        }
    }
}
