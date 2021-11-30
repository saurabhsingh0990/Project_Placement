using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        errorMSG.Visible = false;
        doneMSG.Visible = false;
        //show();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SubmitMember_Click(object sender, EventArgs e)
    {
        try
        {
            var role = "Member";
            string empty = "";
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into People values('" + MemID.Text + "','" + MemName.Text.ToUpper() + "','" + MemClass.Text.ToUpper() + "','" + MemEmail.Text.ToLower() + "','" + MemPhone.Text + "','" + role + "','" + empty + "','" + empty + "','" + empty + "','" + empty + "')";
            cmd.ExecuteNonQuery();
            MemName.Text = "";
            MemClass.Text = "";
            MemEmail.Text = "";
            MemID.Text = "";
            MemPhone.Text = "";
            doneMSG.Visible = true;
            doneMSG.Text = "Added Sucessfully";
            GridView1.DataBind();
        }
        catch(SqlException ex)
        {
            if (ex.Number == 2627 )
            {
                errorMSG.Visible = true;
                errorMSG.Text = "Data Already Exists";
            }
        }
        
    }

    protected void SubmitVolunteer_Click(object sender, EventArgs e)
    {
        try { 
        var role = "Volunteer";
        string empty = "";
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into People values('" + VolID.Text + "','" + VolName.Text.ToUpper() + "','" + VolClass.Text.ToUpper() + "','" + VolEmail.Text.ToLower() + "','" + VolPhone.Text + "','" + role + "','" + empty + "','" + empty + "','" + empty + "','" + empty + "')";
        cmd.ExecuteNonQuery();
        VolName.Text = "";
        VolClass.Text = "";
        VolEmail.Text = "";
        VolID.Text = "";
        VolPhone.Text = "";
            doneMSG.Visible = true;
            doneMSG.Text = "Added Sucessfully";
        }
        catch (SqlException ex)
        {
            if (ex.Number == 2627)
            {
                errorMSG.Visible = true;
                errorMSG.Text = "Data Already Exists";
            }
        }


        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}

