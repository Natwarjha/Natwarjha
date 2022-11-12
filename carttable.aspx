<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="carttable.aspx.cs" Inherits="carttable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1200px" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="Item_Name" HeaderText="Item Name" />
            <asp:BoundField DataField="Item_Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Item image">
                <ItemTemplate>
                    <img src='<%#Eval("Item_Image") %>' height="100" width="100" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Acation">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Text="Remove Item" CommandName="Remove" CommandArgument='<%#Eval("Cart_ID") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView><br />
    <p align="right">
    <asp:Button ID="Button1" runat="server" align="Right" Text="Pay" OnClick="Button1_Click" Width="200px" BackColor="#FF3300" BorderColor="#FF6600" Height="40px" /><br />
    </p>
        <br />
</asp:Content>

