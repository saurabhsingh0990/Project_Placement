using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class memberLogin_memberlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        if (!IsPostBack)
            warning.Visible = false;

    }


    protected void Login_Click(object sender, EventArgs e)
    {
        int verify;
        SqlCommand checklog = con.CreateCommand();
        checklog.CommandType = CommandType.Text;
        checklog.CommandText = "select * from LoginTable where Email_ID = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
        SqlDataAdapter dr = new SqlDataAdapter(checklog);
        DataTable dt = new DataTable();
        dr.Fill(dt);
        checklog.ExecuteNonQuery();
        if (dt.Rows.Count >= 1)
        {
            verify = int.Parse(dt.Rows[0][6].ToString());
            if (verify == 2)
                Response.Redirect("CALLING.aspx");
            else if (verify == 3)
                Response.Redirect("FINANCE.aspx");
            else if (verify == 4)
                Response.Redirect("DATABASE.aspx");
            else if (verify == 5)
                Response.Redirect("HOSPITALITY.aspx");
            else if (verify == 6)
                Response.Redirect("TECHNICAL.aspx");
            else if (verify == 0)
            {
                warning.Visible = true;
                warning.Text = "Enter valid Username and password";
            }
        }
            
        else
        {
            warning.Visible = true;
            warning.Text = "Enter valid Username and password";
        }
    }
}