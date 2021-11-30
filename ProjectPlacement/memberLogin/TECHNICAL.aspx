<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/memberLogin/TECHNICAL.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <html>

    <title></title>
        <style>
        .box{
            display:flex;
                justify-content:center;
                    align-items: center;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

<body>
<div class="auto-style1" style="margin-top:5%">
            WELCOME TO HOSPITALITY TEAM PORTAL!<br />
            PLEASE ENTER THE STOCK DETAILS IN THE FOLLOWING FORM.<br />
            <br />
            <div id="data" runat="server" style="height:300px">
            ENTER YOUR NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Width="214px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QUESTION TYPE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlType" runat="server" Height="17px" Width="222px">
                <asp:ListItem>APTITUDE</asp:ListItem>
                <asp:ListItem>CODING</asp:ListItem>
                <asp:ListItem>COMPETITIVE PROGRAMMING</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QUESTION URL:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtURL" runat="server" Width="215px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="addButton" runat="server" Height="48px" OnClick="addButton_Click" Text="Add Button" Width="102px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnView" runat="server" Height="48px" OnClick="btnView_Click" Text="VIEW" Width="102px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="btnLogout" runat="server" Height="48px" Text="LOGOUT" Width="102px" OnClick="btnLogout_Click" />
                </div>
        </div>
            <div id="display" class="box" runat="server" style="height:300px">
                <div>
                <div class="box" >
                <asp:Button ID="Button1" runat="server" Text="Enter Data" OnClick="Button1_Click" />
                <br />
                    </div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Type" HeaderText="Problem Type" SortExpression="Type" />
                        <asp:BoundField DataField="url" HeaderText="Problem URL" SortExpression="url" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tech] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tech] ([Id], [Name], [Type], [url]) VALUES (@Id, @Name, @Type, @url)" SelectCommand="SELECT * FROM [tech]" UpdateCommand="UPDATE [tech] SET [Name] = @Name, [Type] = @Type, [url] = @url WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="url" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
                </div>
    
</body>
</html>
    </asp:content>
