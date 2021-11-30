using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_controls_Company_Default : System.Web.UI.Page

{
    
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        
        cdate.Enabled = false;
        Calendar1.Visible = false;
        doe.Enabled = false;
        
        var date = DateTime.UtcNow.ToString("dd/MM/yy");
        doe.Text = date;
        if(!IsPostBack)
        {
            idLabel.Visible = false;
            cupdate.Enabled = false;
        }

    }

    void erase()
    {
        cname.Text = "";
        cpackage.Text = "";
        ccriteria.Text = "";
        cdate.Text = "";
        clocation.Text = "";
        idLabel.Visible = false;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
            Calendar1.Visible = false;
        else
            Calendar1.Visible = true;
        Calendar1.Attributes.Add("style", "position : absolute");
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
            e.Day.IsSelectable = false;
        e.Cell.BackColor = System.Drawing.Color.Bisque;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
        cdate.Text = Calendar1.SelectedDate.ToString("dd / MM / yy");
        Calendar1.Visible = false;
    }

    protected void cclear_Click(object sender, EventArgs e)
    {
        erase();
    }

    protected void csubmit_Click(object sender, EventArgs e)
    {
        SqlCommand insert = con.CreateCommand();
        insert.CommandType = CommandType.Text;
        insert.CommandText = "insert into Company values ('"+ cname.Text+"' , '"+cpackage.Text+"' , '"+cdate.Text+"' , '" +clocation.Text+"' , '"+ccriteria.Text+"' , '"+ doe.Text+"')";
        insert.ExecuteNonQuery();
        erase();
        GridView1.DataBind();
    }



    

    protected void cupdate_Click(object sender, EventArgs e)
    {
        SqlCommand update = con.CreateCommand();
        update.CommandType = CommandType.Text;
        update.CommandText = "update Company set [name] = '" + cname.Text+ "' ,[package] = '" + cpackage.Text + "', [dod] = '" + cdate.Text + "', [location] = '" + clocation.Text+ "' , [criteria] = '"+ccriteria.Text+"' where [Id] = '"+idLabel.Text+"'";
        update.ExecuteNonQuery();
        erase();
        GridView1.DataBind();
        cupdate.Enabled = false;
        csubmit.Enabled = true;
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        idLabel.Visible = true;
        idLabel.Text = gr.Cells[0].Text;
        cname.Text = gr.Cells[1].Text;
        cpackage.Text = gr.Cells[2].Text;
        cdate.Text = gr.Cells[3].Text;
        clocation.Text = gr.Cells[4].Text;
        ccriteria.Text = gr.Cells[5].Text;
        doe.Text = gr.Cells[6].Text;
        csubmit.Enabled = false;
        cupdate.Enabled = true;
        
    }
}