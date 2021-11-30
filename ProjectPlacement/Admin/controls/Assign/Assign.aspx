<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/controls/Assign/Assign.aspx.cs" Inherits="Admin_controls_Assign_Assign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 90px;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 90px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            height: 30px;
            width: 212px;
        }
        .auto-style11 {
            height: 29px;
            width: 212px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
        <div>
          <!------   <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 197px;
        }
        .auto-style3 {
            width: 224px;
        }
    </style>---->
            <table cellspacing="1" class="auto-style1">
                <tr>
                    <td class="auto-style6">ID</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="editID" runat="server" Width="149px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="editID" Display="Dynamic" ErrorMessage="Enter only numeric value" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="assign"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="editID" Display="Dynamic" ErrorMessage="Enter Id" ForeColor="Red" ValidationGroup="assign"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="editSearch" runat="server" OnClick="editSearch_Click" Text="Search" ValidationGroup="assign" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Name</td>
                    <td class="auto-style11">
                        <asp:Label ID="editName" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Class</td>
                    <td class="auto-style10">
                        <asp:Label ID="editClass" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Email ID</td>
                    <td class="auto-style10">
                        <asp:Label ID="editEmail" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Phone Number</td>
                    <td class="auto-style10">
                        <asp:Label ID="editPhone" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Role</td>
                    <td class="auto-style10">
                        <asp:Label ID="editRole" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Department</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="editDept" runat="server">
                            <asp:ListItem Value="-1"></asp:ListItem>
                            <asp:ListItem Value="1">Co-coordinator</asp:ListItem>
                            <asp:ListItem Value="2">Calling</asp:ListItem>
                            <asp:ListItem Value="3">Finance</asp:ListItem>
                            <asp:ListItem Value="4">Database</asp:ListItem>
                            <asp:ListItem Value="5">Hospitality</asp:ListItem>
                            <asp:ListItem Value="6">Technical</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Date (To)</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="editTo" runat="server" Width="148px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageAlign="AbsBottom" ImageUrl="~/Image/calendar-flat.png" OnClick="ImageButton1_Click" Width="25px" />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Date (From)</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="editFrom" runat="server" Width="146px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageAlign="AbsBottom" ImageUrl="~/Image/calendar-flat.png" OnClick="ImageButton2_Click" Width="25px" />
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Calendar2_DayRender" OnSelectionChanged="Calendar2_SelectionChanged" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lableWarning" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lableWarning0" runat="server" ForeColor="Lime" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="editUpdate" runat="server" OnClick="editUpdate_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="editCancel" runat="server" OnClick="editCancel_Click" Text="Cancel" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="1" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="DateIn" HeaderText="Date (To) " SortExpression="DateIn" />
                    <asp:BoundField DataField="DateOut" HeaderText="Date (From) " SortExpression="DateOut" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" PreviousPageText="Previous" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [People] where [ID] <10" UpdateCommand =" update [People] set [Department] = @Department, [DateIn] = @DateIn, [DateOut] = @DateOut where [ID] = @ID"  DeleteCommand ="delete from [People] where [ID] = @ID"></asp:SqlDataSource>
        </div>
   </asp:content>