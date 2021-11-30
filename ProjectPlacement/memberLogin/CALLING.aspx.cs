using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {        
            if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        if(!IsPostBack)
        {
            
            data.Visible = true;
            display.Visible = false;
            databtn.Visible = false;
        }
        GridView1.Columns[0].Visible = false;

    }



    
    protected void btnView_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
        display.Visible = true;
        data.Visible = false;
        databtn.Visible = true;
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("memberlogin.aspx");
    }

    protected void databtn_Click(object sender, EventArgs e)
    {
        data.Visible = true;
        display.Visible = false;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Calling values('" + TxtName.Text.ToUpper() + "','" + TxtCName.Text.ToUpper() + "','" + txtMail.Text.ToLower() + "','" + txtNumber.Text.ToUpper() + "','" + txtCPName.Text + "','" + txtDetails.Text + "')";
        cmd.ExecuteNonQuery();
        TxtName.Text = "";
        TxtCName.Text = "";
        txtMail.Text = "";
        txtNumber.Text = "";
        txtCPName.Text = "";
        txtDetails.Text = "";
    }
}