using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_controls_Assign_Assign : System.Web.UI.Page
{
    void showComponent()
    {
        editName.Visible = true;
        editPhone.Visible = true;
        editClass.Visible = true;
        editEmail.Visible = true;
        editRole.Visible = true;
        editDept.Visible = true;
        editTo.Visible = true;
        editFrom.Visible = true;
        ImageButton1.Visible = true;
        ImageButton2.Visible = true;
        editUpdate.Enabled = true;
        editCancel.Enabled = true;
        editSearch.Enabled = true;
        
    }
    void hideComponent()
    {
        editName.Visible = false;
        editPhone.Visible = false;
        editClass.Visible = false;
        editEmail.Visible = false;
        editRole.Visible = false;
        editDept.Visible = false;
        editTo.Visible = false;
        editFrom.Visible = false;
        Calendar1.Visible = false;
        Calendar2.Visible = false;
        ImageButton1.Visible = false;
        ImageButton2.Visible = false;
        editUpdate.Enabled = false;
        editCancel.Enabled = false;
        editSearch.Enabled = true;
    }
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();

        
        if (!IsPostBack)
        {
            editTo.Enabled = false;
            editFrom.Enabled = false;
            lableWarning.Visible = false;
            lableWarning0.Visible = false;
            hideComponent();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var empty = "";

        showComponent();
        GridViewRow gr = GridView1.SelectedRow;
        editID.Text = gr.Cells[0].Text;
        editName.Text = gr.Cells[1].Text;
        editClass.Text = gr.Cells[2].Text;
        editEmail.Text = gr.Cells[3].Text;
        editPhone.Text = gr.Cells[4].Text;
        editRole.Text = gr.Cells[5].Text;
        editDept.SelectedItem.Text = gr.Cells[6].Text;
        if (gr.Cells[7].Text == "&nbsp;")
        {
            empty = "";
            editTo.Text = empty;
        }
        else { editTo.Text = gr.Cells[7].Text; }
        if (gr.Cells[8].Text == "&nbsp;")
        {
            empty = "";
            editFrom.Text = empty;
        }
        else { editFrom.Text = gr.Cells[8].Text; }
        lableWarning.Visible = false;
        lableWarning0.Visible = false;
        
    }


    protected void editUpdate_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update People set [Department] = '"+editDept.SelectedItem+"' ,[DateIn] = '"+editTo.Text+"', [DateOut] = '"+editFrom.Text+"', [Key] = '" + editDept.SelectedValue +"' where [ID] ='"+editID.Text+"'";
        DateTime st = Calendar1.SelectedDate;
        DateTime end = Calendar2.SelectedDate;
       
            cmd.ExecuteNonQuery();
        lableWarning0.Visible = true;
        lableWarning0.Text = "Updated Sucessfully";
        GridView1.DataBind();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = false;
        if (Calendar1.Visible)
            Calendar1.Visible = false;
        else
            Calendar1.Visible = true;
        Calendar1.Attributes.Add("style", "position : absolute");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = false;
        if (Calendar2.Visible)
            Calendar2.Visible = false;
        else
            Calendar2.Visible = true;
        Calendar2.Attributes.Add("style", "position : absolute");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lableWarning0.Visible = false;
        editTo.Text = Calendar1.SelectedDate.ToString("dd / MM / yy");
        Calendar1.Visible = false;
        DateTime st = Calendar1.SelectedDate;
        DateTime end = Calendar2.SelectedDate;
        if (DateTime.Compare(st, end) > 0)
        {
            lableWarning.Visible = true;
            lableWarning.Text = "Please make valid Selection";
        }
        else
            lableWarning.Visible = false;
    }


    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        lableWarning0.Visible = false;
        editFrom.Text = Calendar2.SelectedDate.ToString("dd / MM / yy");
        Calendar2.Visible = false;
        DateTime st = Calendar1.SelectedDate;
        DateTime end = Calendar2.SelectedDate;
        
        if (st > end)
        {
            lableWarning.Visible = true;
            lableWarning.Text = "Please make valid Selection";
            
        }
        else
            lableWarning.Visible = false;
    }

    protected void editCancel_Click(object sender, EventArgs e)
    {

        hideComponent();
        lableWarning0.Visible = false;
        editID.Text = "";
    }

    protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
            e.Day.IsSelectable = false;
        e.Cell.BackColor = System.Drawing.Color.Bisque;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
            e.Day.IsSelectable = false;
        e.Cell.BackColor = System.Drawing.Color.Bisque;
    }

    protected void editSearch_Click(object sender, EventArgs e)
    {
        SqlDataReader dataRead;
        SqlCommand selectQueryCmd;
        
        string selectQuery = ("select * from People where [ID] = "+ int.Parse(editID.Text));
        selectQueryCmd = new SqlCommand(selectQuery, con);
        dataRead = selectQueryCmd.ExecuteReader();

        if (dataRead.Read())
        {
            showComponent();
            lableWarning0.Visible = false;
            editID.Text = dataRead["ID"].ToString();
            editName.Text = dataRead["Name"].ToString();
            editClass.Text = dataRead["class"].ToString();
            editEmail.Text = dataRead["Email_ID"].ToString();
            editPhone.Text = dataRead["Phone_Number"].ToString();
            editRole.Text = dataRead["Role"].ToString();
            editDept.SelectedItem.Text = dataRead["Department"].ToString();
            editTo.Text = dataRead["DateIn"].ToString();
            editFrom.Text = dataRead["DateOut"].ToString();
            lableWarning.Visible = false;
            lableWarning0.Visible = false;
        }
        else
        {
            hideComponent();
            lableWarning0.Visible = false;
            lableWarning.Visible = true;
            lableWarning.Text = "No data for this ID";
            
        }
    }
}