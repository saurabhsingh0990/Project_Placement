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
        Label4.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand check= con.CreateCommand();
        check.CommandType = CommandType.Text;
        check.CommandText = "select * from LoginTable where Email_ID = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
        SqlDataAdapter dr = new SqlDataAdapter(check);
        DataTable dt = new DataTable();
        dr.Fill(dt);
        check.ExecuteNonQuery();
        if (dt.Rows.Count == 1)
        {
            if (int.Parse(dt.Rows[0][6].ToString()) == 0) 
                Response.Redirect("AdminControls.aspx");
            else
            {
                Label4.Visible = true;
                Label4.Text = "Enter valid Username and password";
            }
        }
        else
            Label4.Visible = true;
            Label4.Text = "Enter valid Username and password";
    }
}