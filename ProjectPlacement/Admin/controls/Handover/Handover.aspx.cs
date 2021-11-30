using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_controls_Handover_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        if(!IsPostBack)
        {
            errorLable.Visible = false;
            GridView1.DataBind();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
                
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            
            cmd.CommandText = "insert into LoginTable values('" + 0 + "','" + addName.Text.ToUpper() + "','" + addClass.Text.ToUpper() + "','" + addEmail.Text.ToLower() + "','" + addPassword.Text + "','" + "Admin" + "','" + 0 + "')";
            cmd.ExecuteNonQuery();
            addName.Text = "";
            addClass.Text = "";
            addEmail.Text = "";
            addPassword.Text = "";
            GridView1.DataBind();
            errorLable.Visible = true;

            errorLable.Text = "Admin Changed Successfully";
        }
        catch(SqlException ex)
        {
            if (ex.Number == 2627)
            {
                errorLable.Visible = true;
                string errorMsg = "Admin already exist";
                errorLable.Text = errorMsg;
            }
        }
    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}