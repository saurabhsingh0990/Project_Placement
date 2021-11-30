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
        }
    }


    protected void btnView_Click(object sender, EventArgs e)
    {
        data.Visible = false;
        display.Visible = true;
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("memberlogin.aspx");
    }

    protected void addButton_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Tech values('" + txtName.Text.ToUpper() + "','" + ddlType.SelectedItem.Text.ToString() + "','" + txtURL.Text.ToLower() + "')";
        cmd.ExecuteNonQuery();
        txtName.Text= "";
        txtURL.Text = "";
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        display.Visible = false;
        data.Visible = true;
    }
}