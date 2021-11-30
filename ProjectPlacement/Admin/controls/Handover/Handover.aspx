<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="Handover.aspx.cs" Inherits="Admin_controls_Handover_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style>
                .box{
            display:flex;
                justify-content:center;
                    align-items: center;
        }
    </style>
    <div class="box">
        <div>
    <asp:Label ID="adminName" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="addName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="addName" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="handover"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="addName" Display="Dynamic" ErrorMessage="Enter Alphabets Only" ForeColor="Red" ValidationExpression="^([\sA-Za-z]+)$" ValidationGroup="handover"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="adminClass" runat="server" Text="Class"></asp:Label>
    <asp:TextBox ID="addClass" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="addClass" Display="Dynamic" ErrorMessage="Enter Class" ForeColor="Red" ValidationGroup="handover"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="adminEmail" runat="server" Text="E-Mail"></asp:Label>
    <asp:TextBox ID="addEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="addEmail" Display="Dynamic" ErrorMessage="Enter Email" ForeColor="Red" ValidationGroup="handover"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="addEmail" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="handover"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Label ID="adminPassword" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="addPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="addPassword" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="handover"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="errorLable" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" PostBackUrl="~/Admin/controls/Handover/Handover.aspx" ValidationGroup="handover" />
    <br />
    <br />
            </div>
        </div>
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Class], [Email_ID], [Password] FROM [LoginTable] where [id] = 0" DeleteCommand =" delete from [LoginTable] where [id] = 0"></asp:SqlDataSource>
    <br />
            

</asp:Content>

