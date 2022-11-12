<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
            width: 600px;
            background-color: #FF9999;
            text-align:center;
        }
        .auto-style6 {
            text-align: center;
            text-decoration: underline;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4" align="center">
        <tr>
            <td class="auto-style6" colspan="3"><strong>Admin Login</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>USER NAME</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter User Name" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>PASSWORD</td>
            <td>:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter Password" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="Button2" runat="server" Text="LOG IN" OnClick="Button2_Click"  />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

