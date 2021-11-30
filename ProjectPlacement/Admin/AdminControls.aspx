<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/AdminControls.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> 



    
    <style type="text/css">
         
        .box{
            display:flex;
                justify-content:center;
                    align-items: center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 260px;
        }
        .auto-style10 {
            height: 51px;
            width: 3px;
        }
        .auto-style11 {
            height: 31px;
            width: 3px;
        }
        .auto-style12 {
            height: 51px;
            width: 164px;
        }
        .auto-style13 {
            height: 31px;
            width: 164px;
        }
        .auto-style14 {
            width: 164px;
        }
        .auto-style17 {
            height: 30px;
            width: 3px;
        }
        .auto-style18 {
            height: 30px;
            width: 164px;
        }
        .auto-style21 {
            height: 56px;
            width: 3px;
        }
        .auto-style22 {
            width: 164px;
            height: 56px;
        }
        .auto-style25 {
            height: 19px;
            width: 3px;
        }
        .auto-style26 {
            height: 19px;
            width: 164px;
        }
        .auto-style31 {
            width: 100%;
            margin-right: 0px;
        }
        .auto-style32 {
            width: 3px;
        }
    .auto-style33 {
        height: 32px;
        width: 3px;
    }
    .auto-style34 {
        width: 164px;
        height: 32px;
    }
    </style>

    
        <div style="margin-left: 120px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    <div class="box">
        <div>
        <table cellspacing="1" class="auto-style31">
            <tr>
                <td class="auto-style10">
        <asp:Button ID="Button5" runat="server" Text="Handover Control" OnClick="Button5_Click" Height="50px" Width="200px" />
                </td>
                <td class="auto-style12">
            <asp:Button ID="Button2" runat="server" Text="Create Company" OnClick="Button2_Click" Height="50px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style10">
            <asp:Button ID="Button3" runat="server" Text="Assign / Unassign Task" OnClick="Button3_Click" Height="50px" Width="200px" />
                </td>
                <td class="auto-style12">
            <asp:Button ID="Button1" runat="server" Text="Supervisor" OnClick="Button1_Click" Height="50px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style21">
        <asp:Button ID="Button11" runat="server" Text="Manage Member / Volunteer" OnClick="Button11_Click" Height="50px" Width="200px" />
                </td>
                <td class="auto-style22">
        <asp:Button ID="Button10" runat="server" Text="View" OnClick="Button10_Click" Height="50px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        </div>
        </div>
    

    </asp:content>