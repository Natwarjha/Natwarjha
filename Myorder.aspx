<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Myorder.aspx.cs" Inherits="Myorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Where is My Product" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Location" HeaderText="Item Location" />
            <asp:BoundField DataField="trackDate" HeaderText="Date" />
        </Columns>
    </asp:GridView>
    <br />
</asp:Content>

