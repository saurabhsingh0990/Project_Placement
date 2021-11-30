<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/memberLogin/DATABASE.aspx.cs" Inherits="_Default" %>

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
    <p class="auto-style1">
            WELCOME TO DATABASE MANAGEMENT PORTAL!<br />
            PLEASE ENTER THE PLACED STUDENTS DETAILS IN THE FOLLOWING FORM</p>
    
       
        <p class="auto-style1">

            &nbsp;</p>
        <div id="data" runat="server">
        <p class="auto-style1">
            
 NAME OF STUDENT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtStuName" runat="server" Width="306px"></asp:TextBox>
        </p>
        <p class="auto-style1">
            NAME OF COMPANY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCompName" runat="server" Width="306px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCompName" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="Db"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; JOB PROFILE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtJobProfile" runat="server" Width="306px"></asp:TextBox>
        </p>
        <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PACKAGE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPackage" runat="server" Width="306px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPackage" Display="Dynamic" ErrorMessage="MUST BE A NUMBER!" ForeColor="Red" ValidationExpression="^[0-9,\.]+$" ValidationGroup="Db"></asp:RegularExpressionValidator>
        </p>
        <p class="auto-style1">
            COMPANY TYPE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="rdbOpen" runat="server"  Text="Open Company" GroupName="Ctype" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdbClosed" runat="server" Text="Closed Company" GroupName="Ctype" />
&nbsp;</p>
        <p class="auto-style1">
&nbsp;&nbsp;&nbsp; OFFER:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdbAccepted" runat="server" Text="Accepted" GroupName="Coffer" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdbNotAccepted" runat="server" Text="Not Accepted" GroupName="Coffer" />
        </p>
        <p class="auto-style1">
            <asp:Button ID="btnAdd" runat="server" Height="48px" Text="ADD" Width="108px" OnClick="btnAdd_Click" ValidationGroup="Db" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnView" runat="server" Height="48px" Text="VIEW DATA" Width="114px" OnClick="btnView_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogout" runat="server" Height="48px" Text="LOGOUT" Width="113px" OnClick="btnLogout_Click" />
        </p>
        <p class="auto-style1">
            &nbsp;</p>
        </div>
        <div id="display" runat="server" class="box" style="height:300px">
            <div>
            <div class="box">
                    <asp:Button ID="btnData" runat="server" Text="Enter Data" OnClick="btnData_Click" />
                </div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="NameDb" HeaderText="Student Name" SortExpression="NameDb" />
                        <asp:BoundField DataField="CompanyNameDb" HeaderText="Company Name" SortExpression="CompanyNameDb" />
                        <asp:BoundField DataField="ProfileDB" HeaderText="Job Profile" SortExpression="ProfileDB" />
                        <asp:BoundField DataField="PackageDb" HeaderText="Package" SortExpression="PackageDb" />
                        <asp:BoundField DataField="TypeDb" HeaderText="Company Type" SortExpression="TypeDb" />
                        <asp:BoundField DataField="OfferDb" HeaderText="Offer" SortExpression="OfferDb" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [info] WHERE [Id] = @Id" InsertCommand="INSERT INTO [info] ([NameDb], [CompanyNameDb], [ProfileDB], [PackageDb], [TypeDb], [OfferDb]) VALUES (@NameDb, @CompanyNameDb, @ProfileDB, @PackageDb, @TypeDb, @OfferDb)" SelectCommand="SELECT * FROM [info]" UpdateCommand="UPDATE [info] SET [NameDb] = @NameDb, [CompanyNameDb] = @CompanyNameDb, [ProfileDB] = @ProfileDB, [PackageDb] = @PackageDb, [TypeDb] = @TypeDb, [OfferDb] = @OfferDb WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NameDb" Type="String" />
                        <asp:Parameter Name="CompanyNameDb" Type="String" />
                        <asp:Parameter Name="ProfileDB" Type="String" />
                        <asp:Parameter Name="PackageDb" Type="Int32" />
                        <asp:Parameter Name="TypeDb" Type="String" />
                        <asp:Parameter Name="OfferDb" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NameDb" Type="String" />
                        <asp:Parameter Name="CompanyNameDb" Type="String" />
                        <asp:Parameter Name="ProfileDB" Type="String" />
                        <asp:Parameter Name="PackageDb" Type="Int32" />
                        <asp:Parameter Name="TypeDb" Type="String" />
                        <asp:Parameter Name="OfferDb" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
        </div>
        
    
</body>
</html>
    </asp:content>
