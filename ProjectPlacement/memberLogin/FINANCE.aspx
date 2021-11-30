<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FINANCE.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .auto-style2 {
            margin-left: 159px;
        }
        .auto-style3 {
            margin-left: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            WELCOME TO FINANCE TEAM PORTAL!<br />
            PLEASE ENTER THE INCOME-EXPENDITURE DETAILS IN THE FOLLOWING FORM</div>
        <div class="auto-style1">
        <br />
        <br />

            <br />
            <br />
            <div id="data" class="box" runat="server">
                <div>
 ADD AMOUNT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtAddAmt" runat="server" Width="295px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtAddAmt" Display="Dynamic" ErrorMessage="MUST BE A NUMBER!" ForeColor="Red" ValidationExpression="^[0-9,\.]+$" ValidationGroup="finance"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtAddAmt" Display="Dynamic" ErrorMessage="Enter a Value" ForeColor="Red" ValidationGroup="finance"></asp:RequiredFieldValidator>
            <br />
            <br />
EXPENSE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtExpense" runat="server" Width="295px" CssClass="auto-style3"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtExpense" Display="Dynamic" ErrorMessage="MUST BE A NUMBER!" ForeColor="Red" ValidationExpression="^[0-9,\.]+$" ValidationGroup="finance"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtExpense" Display="Dynamic" ErrorMessage="Enter a Value" ForeColor="Red" ValidationGroup="finance"></asp:RequiredFieldValidator>
                    <br />
            <br />
            VIEW BALANCE:<asp:TextBox ID="TxtExpense0" runat="server" Width="317px" CssClass="auto-style2"></asp:TextBox>
            <br />
            <br />
            EXPENSE DETAILS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TxtExpenseDetail" runat="server" Height="82px" TextMode="MultiLine" Width="295px"></asp:TextBox>
&nbsp;
            <br />
   
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Height="48px" OnClick="btnUpdate_Click" Text="Update" Width="149px" ValidationGroup="finance" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLogout" runat="server" Height="48px" OnClick="btnLogout_Click" Text="Logout" Width="149px" />
        </div>
                </div>
            </div>
        
    </form>
</body>
</html>
