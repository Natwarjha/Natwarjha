<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="1" class="auto-style1">
        <tr>
            <td class="auto-style4"><strong>Payment Option</strong></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <strong>Please Select One</strong></td>
        </tr>
        <tr>
            <td align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Credit/ Debit/ ATM Card</asp:ListItem>
                    <asp:ListItem>Phone Pay</asp:ListItem>
                    <asp:ListItem>Net Banking</asp:ListItem>
                    <asp:ListItem>Cash on Delivery (COD)</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" ForeColor="Black" Text="Conform" Width="200px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

