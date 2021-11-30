using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("controls/Handover/Handover.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("controls/Supervisor/Supervisor.aspx");
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("controls/Manage/ManagePeople.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("controls/Assign/assign.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("controls/Company/Company.aspx");
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("controls/View/View.aspx");
    }
}