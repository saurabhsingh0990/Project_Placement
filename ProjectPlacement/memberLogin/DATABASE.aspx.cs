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
        GridView1.Columns[0].Visible = false;
        if(!IsPostBack)
        {
            data.Visible = true;
            display.Visible = false;
        }
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string type;
        string offer;
        if (rdbOpen.Checked)
            type = "Open Company";
        else
            type = "Closed Company";

        if (rdbAccepted.Checked)
            offer = "Accepted";
        else
            offer = "Not Accepted";
        
        
        
        
        string insert = "insert into info values('" + txtStuName.Text + "','" + txtCompName.Text.ToUpper() + "','" + txtJobProfile.Text.ToUpper() + "','" + int.Parse(txtPackage.Text)+ "','" + type + "','" + offer +"')";
        SqlCommand cmd = new SqlCommand(insert, con);
        cmd.ExecuteNonQuery();

        
        txtStuName.Text = "";
        txtCompName.Text = "";
        txtJobProfile.Text = "";
        txtPackage.Text = "";
        rdbOpen.Checked = false;
        rdbClosed.Checked = false;
        rdbAccepted.Checked = false;
        rdbNotAccepted.Checked = false;
    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        data.Visible = false;
        display.Visible = true;
        GridView1.DataBind();

    }

    protected void btnData_Click(object sender, EventArgs e)
    {
        display.Visible = false;
        data.Visible = true;
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("memberlogin.aspx");
    }
}