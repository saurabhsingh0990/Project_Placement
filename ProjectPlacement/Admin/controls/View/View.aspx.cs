using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_controls_View_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Member.Visible = false;
        Volunteer.Visible = false;
        Company.Visible = false;
        Finance.Visible = false;
        Calling.Visible = false;
        Hospitality.Visible = false;
        Database.Visible = false;
        Cocoordinator.Visible = false;
        Technical.Visible = false;
        
        if(!IsPostBack)
        {
            departmentSelect.Visible = false;
            Button1.Visible = false;
            Label2.Visible = false;
        }
        
        
    }

    protected void ViewSelect_SelectedIndexChanged(object sender, EventArgs e)
    {

        if(ViewSelect.SelectedItem.Text == "Department")
        {
            Label2.Visible = true;
            departmentSelect.Visible = true;
            Button1.Visible = true;
        }
        else
        {
            departmentSelect.Visible = false;
            Button1.Visible = false;
            Label2.Visible = false;
            
            if (ViewSelect.SelectedItem.Text == "Member")
            {
                Member.Visible = true;
            }
            else if (ViewSelect.SelectedItem.Text == "Volunteer")
            {
                Volunteer.Visible = true;
            }
            else if(ViewSelect.SelectedItem.Text == "Company")
            {
                Company.Visible = true;
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (departmentSelect.SelectedItem.Text == "Co-coordinator")
        {
            
            Cocoordinator.Visible = true;
        }
        else if (departmentSelect.SelectedItem.Text == "Calling")
        {
            Calling.Visible = true;
        }
        else if (departmentSelect.SelectedItem.Text == "Finance")
        {
            
            Finance.Visible = true;
        }
        else if (departmentSelect.SelectedItem.Text == "Database")
        {
            
            Database.Visible = true;
        }
        else if (departmentSelect.SelectedItem.Text == "Hospitality")
        {
            
            Hospitality.Visible = true;
        }
        else if (departmentSelect.SelectedItem.Text == "Technical")
        {
            
            Technical.Visible = true;
        }
    }
}