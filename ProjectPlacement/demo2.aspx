<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="demo2.aspx.cs" Inherits="demo2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <asp:Label ID="Label1" runat="server" Text="Placement Cell, Panjab University, Chandigarh"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Please Select a category"></asp:Label>
            <br />
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Select Category</asp:ListItem>
                <asp:ListItem Value="Admin/AdminLogin.aspx">Admin</asp:ListItem>
                <asp:ListItem Value="Team/TeamLogin.aspx">Team Member</asp:ListItem>
                <asp:ListItem Value="AboutUs/AboutUs.aspx">About Us</asp:ListItem>
            </asp:DropDownList>
    <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        
</asp:Content>


