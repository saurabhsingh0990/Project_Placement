<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/controls/Manage/ManagePeople.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> 

    <style>
        #divLeft{
        width: 50%;
        float: left;
        }
        #divRight{
        width: 50%;
        float: left;
        }
    </style>

        <div id="divLeft">
            <fieldset>
             <legend>Members :</legend>
                <asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="MemName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="MemName" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="Member"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="MemName" Display="Dynamic" ErrorMessage="Enter Alphabets Only" ForeColor="Red" ValidationExpression="^([\sA-Za-z]+)$" ValidationGroup="Member"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Class" runat="server" Text="Class"></asp:Label>
                <asp:TextBox ID="MemClass" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MemClass" Display="Dynamic" ErrorMessage="Enter Class" ForeColor="Red" ValidationGroup="Member"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="EmailID" runat="server" Text="Email ID"></asp:Label>
                <asp:TextBox ID="MemEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MemEmail" Display="Dynamic" ErrorMessage="Enter Email" ForeColor="Red" ValidationGroup="Member"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="MemEmail" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Member"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="PhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                <asp:TextBox ID="MemPhone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MemPhone" Display="Dynamic" ErrorMessage="Enter Phone Number" ForeColor="Red" ValidationGroup="Member"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="MemPhone" Display="Dynamic" ErrorMessage="Enter 10 digit phone number" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})" ValidationGroup="Member"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="ID" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="MemID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="MemID" Display="Dynamic" ErrorMessage="Enter ID" ForeColor="Red" ValidationGroup="Member"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="SubmitMember" runat="server" Text="Submit" OnClick="SubmitMember_Click" ValidationGroup="Member" />
                
 </fieldset>
            
        </div>
        <div id="divRight">
            <fieldset>
                
                     <legend >Volunteers :</legend>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="VolName" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="VolName" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="volunteer"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="VolName" Display="Dynamic" ErrorMessage="Enter Alphabets Only" ForeColor="Red" ValidationExpression="^([\sA-Za-z]+)$" ValidationGroup="volunteer"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Class"></asp:Label>
                <asp:TextBox ID="VolClass" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="VolClass" Display="Dynamic" ErrorMessage="Enter Class" ForeColor="Red" ValidationGroup="volunteer"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                <asp:TextBox ID="VolEmail" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="VolEmail" Display="Dynamic" ErrorMessage="Enter Email" ForeColor="Red" ValidationGroup="volunteer"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="VolEmail" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="volunteer"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
                <asp:TextBox ID="VolPhone" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="VolPhone" Display="Dynamic" ErrorMessage="Enter Phone Number" ForeColor="Red" ValidationGroup="volunteer"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="VolPhone" Display="Dynamic" ErrorMessage="Enter 10 digit phone number" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})" ValidationGroup="volunteer"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label5" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="VolID" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="VolID" Display="Dynamic" ErrorMessage="Enter ID" ForeColor="Red" ValidationGroup="volunteer"></asp:RequiredFieldValidator>
                <br /><br/>
                
                <asp:Button ID="SubmitVolunteer" runat="server" Text="Submit" OnClick="SubmitVolunteer_Click" ValidationGroup="volunteer" />
                
            </fieldset>
        </div>


        <asp:Label ID="errorMSG" runat="server" ForeColor="Red" Text="Label"></asp:Label>
        <div >
            <asp:Label ID="doneMSG" runat="server" ForeColor="Lime" Text="Label"></asp:Label>
        </div>


        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                <asp:TemplateField HeaderText="Role" SortExpression="Role">
                    <EditItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Role") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [People] WHERE [ID] = @ID" InsertCommand="INSERT INTO [People] ([ID], [Email_ID], [class], [Name], [Phone_Number], [Role]) VALUES (@ID, @Email_ID, @class, @Name, @Phone_Number, @Role)" SelectCommand="SELECT [ID], [Email_ID], [class], [Name], [Phone_Number], [Role] FROM [People]" UpdateCommand="UPDATE [People] SET [Email_ID] = @Email_ID, [class] = @class, [Name] = @Name, [Phone_Number] = @Phone_Number WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Email_ID" Type="String" />
                <asp:Parameter Name="class" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="Decimal" />
                <asp:Parameter Name="Role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email_ID" Type="String" />
                <asp:Parameter Name="class" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="Decimal" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <p>
            &nbsp;</p>


    </asp:content>
