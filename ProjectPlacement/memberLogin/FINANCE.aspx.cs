using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        if (!IsPostBack)
        {
            TxtExpense0.Enabled = false;
            Label1.Visible = false;
            TxtExpense0.Text = Total().ToString();
        }
    }





    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if ((Total() + int.Parse(TxtAddAmt.Text) - int.Parse(TxtExpense.Text)) > 0)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Finance values('" + int.Parse(TxtAddAmt.Text) + "','" + int.Parse(TxtExpense.Text) + "','" + TxtExpenseDetail.Text + "')";
            cmd.ExecuteNonQuery();


            Total();
            TxtAddAmt.Text = "";
            TxtExpense.Text = "";
            TxtExpenseDetail.Text = "";
            Label1.Visible = true;
            Label1.Text = " Updated !";
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Low Balance !";
        }
    }



    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("memberlogin.aspx");
    }

     public int Total()
    {
        string total = "select sum([add]) from [Finance]";
        SqlCommand plus = new SqlCommand(total, con);
        int positive;
        var dr = plus.ExecuteReader();
        dr.Read();
        positive = dr.GetInt32(0) ;
        dr.Close();
        string minus = "select sum([exp]) from [Finance]";
        int negative;
        SqlCommand less = new SqlCommand(minus, con);
        var dr1 = less.ExecuteReader();
        dr1.Read();
        negative = dr1.GetInt32(0);
        dr1.Close();
        TxtExpense0.Text = (positive - negative).ToString();
        return (positive - negative);
    }
}