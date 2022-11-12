<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 600px;
            background-color: #FF6666;
        }
        .auto-style4 {
            width: 600px;
            background-color: #FF9999;
        }
        .auto-style5 {
            text-align: center;
            text-decoration: underline;
            color: #0000FF;
        }
        .auto-style6 {
            text-align: center;
            text-decoration: underline;
            color: #FF0000;
        }
    .auto-style7 {
        height: 28px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="1" class="auto-style1">
        <tr>
            <td>
                <table align="center" class="auto-style3" >
                    <tr>
                        <td class="auto-style5" colspan="3"><strong>HELLO THERE, SIGNUP HERE</strong></td>
                    </tr>
                    <tr>
                        <td>NAME</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Name" style="font-size: x-small" Display="None"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>EMAIL ID</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter e-mail" style="font-size: x-small" Display="None"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>MOBILE No.</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Mobile No." style="font-size: x-small" Display="None"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>USER NAME</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter User Name" style="font-size: x-small" Display="None"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">PASSWORD</td>
                        <td class="auto-style7">:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Password" style="font-size: x-small" Display="None"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>CONIFROM PASSWORD</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="Not matched" style="font-size: x-small" Display="None"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <asp:Button ID="Button1" runat="server" Text="CREATE ACCOUNT" OnClick="Button1_Click1"  />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6" colspan="3"><strong>WELCOME BACK, LOGIN HERE</strong></td>
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
                        </td>
                    </tr>
                    <tr>
                        <td>PASSWORD</td>
                        <td>:</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
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
                            <asp:Button ID="Button2" runat="server" Text="LOG IN" OnClick="Button2_Click" CausesValidation="False"  />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>
</asp:Content>

