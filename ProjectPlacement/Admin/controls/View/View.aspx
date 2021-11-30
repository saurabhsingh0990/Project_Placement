<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/controls/View/View.aspx.cs" Inherits="Admin_controls_View_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> 
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            height: 25px;
            width: 193px;
        }
        .auto-style4 {
            width: 193px;
        }
        .auto-style5 {
            height: 25px;
            width: 213px;
        }
        .auto-style6 {
            width: 213px;
        }
        .auto-style7 {
            width: 193px;
            height: 2px;
        }
        .auto-style8 {
            width: 213px;
            height: 2px;
        }
        .auto-style9 {
            height: 2px;
        }
    </style>

    <div class="box">
        <div>
            <table cellspacing="1" class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="View data by"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ViewSelect" runat="server" OnSelectedIndexChanged="ViewSelect_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Value="-1">--Select--</asp:ListItem>
                            <asp:ListItem>Member</asp:ListItem>
                            <asp:ListItem>Volunteer</asp:ListItem>
                            <asp:ListItem>Company</asp:ListItem>
                            <asp:ListItem>Department</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Select Department"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="departmentSelect" runat="server">
                             <asp:ListItem Value="-1">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">Co-coordinator</asp:ListItem>
                            <asp:ListItem Value="Calling">Calling</asp:ListItem>
                            <asp:ListItem Value="Finance">Finance</asp:ListItem>
                            <asp:ListItem Value="Database">Database</asp:ListItem>
                            <asp:ListItem Value="Hospitality">Hospitality</asp:ListItem>
                            <asp:ListItem Value="Technical">Technical</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        
        <div id="Member" runat ="Server">
            <asp:GridView ID="gvdMember" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>
        </div>
        <div id="Volunteer" runat ="Server">
            <asp:GridView ID="gvdVolunteer" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Volunteer]"></asp:SqlDataSource>
        </div>
        <div id="Company" runat ="Server">
            <asp:GridView ID="gvdCompany" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                    <asp:BoundField DataField="package" HeaderText="package" SortExpression="package" />
                    <asp:BoundField DataField="dod" HeaderText="dod" SortExpression="dod" />
                    <asp:BoundField DataField="criteria" HeaderText="criteria" SortExpression="criteria" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CompanyView]"></asp:SqlDataSource>
        </div>
        <div id="Cocoordinator" runat ="Server">
            <asp:GridView ID="gvdCo" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" AllowSorting="True" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Coord]"></asp:SqlDataSource>
        </div>
        <div id="Calling" runat ="Server">
            <asp:GridView ID="gvdCall" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" AllowSorting="True" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CallView]"></asp:SqlDataSource>
        </div>
        <div id="Finance" runat ="Server">
            <asp:GridView ID="gvdFinance" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" AllowSorting="True" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FinanceView]"></asp:SqlDataSource>
        </div>
        <div id="Database" runat ="Server">
            <asp:GridView ID="gvdDatabase" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" AllowSorting="True" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DataBaseView]"></asp:SqlDataSource>
        </div>
        <div id="Hospitality" runat ="Server">
            <asp:GridView ID="gvdHos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" AllowSorting="True" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [hospitalView]"></asp:SqlDataSource>
        </div>
        <div id="Technical" runat ="Server">
            <asp:GridView ID="gvdTech" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" AllowSorting="True" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TechView]"></asp:SqlDataSource>
        </div>
        
    </div>
    </asp:content>
