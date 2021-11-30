<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/memberLogin/CALLING.aspx.cs" Inherits="_Default" %>

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
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 209px;
        }
        .auto-style6 {
            margin-left: 2px;
        }
        .auto-style7 {
            width: 238px;
        }
        .auto-style8 {
            width: 238px;
            height: 25px;
        }
        .auto-style9 {
            width: 209px;
            height: 25px;
        }
        .auto-style10 {
            height: 25px;
        }
    </style>
<body>
    
   
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
WELCOME TO CALLING TEAM PORTAL!
            <br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 PLEASE ADD DETAILS OF THE COMPANY IN THE FOLLOWING FORM.<br />

            <br />

            <br />
    
        <div class="auto-style1 box" id="data" runat="server">
            <div>
                <table cellspacing="1" class="auto-style3">
                    <tr>
                        <td class="auto-style7">YOUR NAME:&nbsp;&nbsp;</td>
                        <td class="auto-style5">
            <asp:TextBox ID="TxtName" runat="server" Width="295px" CssClass="auto-style6"></asp:TextBox>
                        </td>
                        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" Display="Dynamic" ErrorMessage="REQUIRED!" ForeColor="Red" ValidationGroup="CALLING"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">COMPANY NAME:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style5">
            <asp:TextBox ID="TxtCName" runat="server" Width="293px"></asp:TextBox>
                        </td>
                        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCName" Display="Dynamic" ErrorMessage="REQUIRED!" ForeColor="Red" ValidationGroup="CALLING"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">COMPANY EMAIL ID:</td>
                        <td class="auto-style5"> <asp:TextBox ID="txtMail" runat="server" Width="294px"></asp:TextBox>
                        </td>
                        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" Display="Dynamic" ErrorMessage="MUST END WITH .COM" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="CALLING"></asp:RegularExpressionValidator>
            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
            
        <p style="margin-left: 40px" class="auto-style1">
             COMPANY CONTACT NO.:</p>
                        </td>
                        <td class="auto-style5">
            <asp:TextBox ID="txtNumber" runat="server" CssClass="auto-style2" Width="293px"></asp:TextBox>
                        </td>
                        <td>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNumber" Display="Dynamic" ErrorMessage="PLEASE ENTER CORRECT NUMBER!" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$" ValidationGroup="CALLING"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">CONTACT PERSON NAME:</td>
                        <td class="auto-style9">
            <asp:TextBox ID="txtCPName" runat="server" Width="293px"></asp:TextBox>
                        </td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                
        <p style="margin-left: 240px" class="auto-style1">
            DETAILS:&nbsp;&nbsp;&nbsp; </p>
                        </td>
                        <td class="auto-style5">
            <asp:TextBox ID="txtDetails" runat="server" Height="75px" Width="289px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">
                            <table cellspacing="3" class="auto-style3">
                                <tr>
                                    <td>
            
          <asp:Button ID="btnAdd" runat="server" Height="44px" OnClick="btnAdd_Click" Text="Add Data" ValidationGroup="CALLING" Width="95px" />
                                    </td>
                                    <td>
            <asp:Button ID="btnView" runat="server" Height="48px" OnClick="btnView_Click" Text="VIEW" Width="97px" CausesValidation="False" />

                                    </td>
                                    <td>

            <asp:Button ID="btnLogout" runat="server" Height="48px" OnClick="btnLogout_Click" Text="LOGOUT" Width="97px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                
                <p style="margin-left: 240px" class="auto-style1">
                    &nbsp;&nbsp;
        </p>
        <p style="margin-left: 280px; font-weight: 700;" class="auto-style1">
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
            </div>
            </div>
        <div runat="server" id="display" class="box" style="height:300px">
            <div>
                <div class="box">
            <asp:Button ID="databtn" runat="server" Text="Enter Data"  OnClick="databtn_Click" />
                    </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Candidate" HeaderText="Candidate Name" SortExpression="Candidate" />
                    <asp:BoundField DataField="Company" HeaderText="Company Name" SortExpression="Company" />
                    <asp:BoundField DataField="CompanyMail" HeaderText="Company Mail" SortExpression="CompanyMail" />
                    <asp:BoundField DataField="CompanyContact" HeaderText="Contact" SortExpression="CompanyContact" />
                    <asp:BoundField DataField="ContactPerson" HeaderText="Contact Person" SortExpression="ContactPerson" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Calling] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Calling] ([Id], [Candidate], [Company], [CompanyMail], [CompanyContact], [ContactPerson], [Details]) VALUES (@Id, @Candidate, @Company, @CompanyMail, @CompanyContact, @ContactPerson, @Details)" SelectCommand="SELECT * FROM [Calling]" UpdateCommand="UPDATE [Calling] SET [Candidate] = @Candidate, [Company] = @Company, [CompanyMail] = @CompanyMail, [CompanyContact] = @CompanyContact, [ContactPerson] = @ContactPerson, [Details] = @Details WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Candidate" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="CompanyMail" Type="String" />
                    <asp:Parameter Name="CompanyContact" Type="String" />
                    <asp:Parameter Name="ContactPerson" Type="String" />
                    <asp:Parameter Name="Details" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Candidate" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="CompanyMail" Type="String" />
                    <asp:Parameter Name="CompanyContact" Type="String" />
                    <asp:Parameter Name="ContactPerson" Type="String" />
                    <asp:Parameter Name="Details" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
            </div>
    
</body>
</html>
    </asp:content>

