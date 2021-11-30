using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About_us_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        aboutTPC.Visible = false;
        COC.Visible = false;
        teamMembers.Visible = false;
        ATD.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        aboutTPC.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        COC.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        teamMembers.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        ATD.Visible = true;
    }
}