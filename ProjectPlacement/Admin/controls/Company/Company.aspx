<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/controls/Company/Company.aspx.cs" Inherits="Admin_controls_Company_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .box{
            display:flex;
                justify-content:center;
                    align-items: center;
        }
        .auto-style2 {
            width: 157px;
        }
        .auto-style3 {
            width: 118px;
        }
        .auto-style4 {
            width: 284px;
        }
        .auto-style5 {
            width: 157px;
            height: 25px;
        }
        .auto-style6 {
            width: 118px;
            height: 25px;
        }
        .auto-style7 {
            width: 284px;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
        }
        .auto-style9 {
            width: 157px;
            height: 33px;
        }
        .auto-style10 {
            width: 118px;
            height: 33px;
        }
        .auto-style11 {
            width: 284px;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
        <div>
    <table cellspacing="1" class="auto-style1">
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style43">
                <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
                (<asp:Label ID="idLabel" runat="server" Text="Label"></asp:Label>
                )</td>
            <td class="auto-style36">
                <asp:TextBox ID="cname" runat="server" Width="213px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cname" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="Company"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="cname" Display="Dynamic" ErrorMessage="Enter Alphabets Only" ForeColor="Red" ValidationExpression="^([\sA-Za-z]+)$" ValidationGroup="Company"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style44">
                <asp:Label ID="Label2" runat="server" Text="Package"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:TextBox ID="cpackage" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cpackage" Display="Dynamic" ErrorMessage="Enter Package" ForeColor="Red" ValidationGroup="Company"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cpackage" Display="Dynamic" ErrorMessage="Enter Only Number" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="Company"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style45">
                <asp:Label ID="dod" runat="server" Text="Date Of Drive"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="cdate" runat="server" Width="213px" CssClass="auto-style42"></asp:TextBox> <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageAlign="AbsBottom" ImageUrl="~/Image/calendar-flat.png" OnClick="ImageButton1_Click" Width="25px" />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px" OnDayRender="Calendar1_DayRender">
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
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cdate" Display="Dynamic" ErrorMessage="Select Date" ForeColor="Red" ValidationGroup="Company"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style44">
                <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:TextBox ID="clocation" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="clocation" Display="Dynamic" ErrorMessage="Enter Loaction" ForeColor="Red" ValidationGroup="Company"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style46">
                <asp:Label ID="Label5" runat="server" Text="Eligibility Criteria"></asp:Label>
            </td>
            <td class="auto-style39">
                <asp:TextBox ID="ccriteria" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ccriteria" Display="Dynamic" ErrorMessage="Enter Eigibility" ForeColor="Red" ValidationGroup="Company"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style47">
                <asp:Label ID="Label6" runat="server" Text="Date of Entry"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:TextBox ID="doe" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style48"></td>
            <td class="auto-style41">
                <asp:Button ID="csubmit" runat="server" Text="Submit" OnClick="csubmit_Click" ValidationGroup="Company" />
&nbsp;<asp:Button ID="cupdate" runat="server" Text="Update" OnClick="cupdate_Click" ValidationGroup="Company" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cclear" runat="server" Text="Clear" OnClick="cclear_Click" />
            </td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style50"></td>
            <td class="auto-style51"></td>
            <td class="auto-style52"></td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style49">
                
                <br />
            </td>
            <td class="auto-style39">
                
            </td>
            <td>&nbsp;</td>
        </tr>
       
    </table>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="package" HeaderText="package" SortExpression="package" />
                        <asp:BoundField DataField="dod" HeaderText="dod" SortExpression="dod" />
                        <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                        <asp:BoundField DataField="criteria" HeaderText="criteria" SortExpression="criteria" />
                        <asp:BoundField DataField="doe" HeaderText="doe" SortExpression="doe" />
                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Company] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Company] ([name], [package], [dod], [location], [criteria], [doe]) VALUES (@name, @package, @dod, @location, @criteria, @doe)" SelectCommand="SELECT * FROM [Company]" UpdateCommand="UPDATE [Company] SET [name] = @name, [package] = @package, [dod] = @dod, [location] = @location, [criteria] = @criteria, [doe] = @doe WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    
                </asp:SqlDataSource>
            </div>
        </div>
    </asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style14 {
            height: 22px;
        }
        .auto-style16 {
            height: 32px;
        }
        .auto-style18 {
            height: 42px;
        }
        .auto-style20 {
            height: 25px;
        }
        .auto-style22 {
            height: 27px;
        }
        .auto-style29 {
            width: 172px;
            height: 27px;
        }
        .auto-style30 {
            width: 172px;
            height: 32px;
        }
        .auto-style31 {
            width: 172px;
            height: 22px;
        }
        .auto-style32 {
            width: 172px;
        }
        .auto-style33 {
            width: 172px;
            height: 25px;
        }
        .auto-style34 {
            width: 172px;
            height: 42px;
        }
        .auto-style35 {
            width: 172px;
            height: 90px;
        }
    .auto-style36 {
        width: 319px;
        height: 27px;
    }
    .auto-style37 {
        width: 319px;
        height: 32px;
    }
    .auto-style38 {
        width: 319px;
        height: 22px;
    }
    .auto-style39 {
        width: 319px;
    }
    .auto-style40 {
        width: 319px;
        height: 25px;
    }
    .auto-style41 {
        width: 319px;
        height: 42px;
    }
    .auto-style42 {
        margin-left: 0px;
    }
    .auto-style43 {
        width: 168px;
        height: 27px;
    }
    .auto-style44 {
        width: 168px;
        height: 32px;
    }
    .auto-style45 {
        width: 168px;
        height: 22px;
    }
    .auto-style46 {
        width: 168px;
    }
    .auto-style47 {
        width: 168px;
        height: 25px;
    }
    .auto-style48 {
        width: 168px;
        height: 42px;
    }
    .auto-style49 {
        width: 168px;
        height: 90px;
    }
    .auto-style50 {
        width: 172px;
        height: 39px;
    }
    .auto-style51 {
        width: 168px;
        height: 39px;
    }
    .auto-style52 {
        width: 319px;
        height: 39px;
    }
    .auto-style53 {
        height: 39px;
    }
    </style>
</asp:Content>


