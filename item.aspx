<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="item.aspx.cs" Inherits="item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" Width="1200px" OnItemCommand="DataList1_ItemCommand" CellSpacing="2" >
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
           
            <ItemStyle BackColor="White" />
           
           <ItemTemplate>
             
              
               <img src=" <%#Eval("Item_Image") %>" width="250" height="250" /><br />
  
               <%#Eval("Item_Name") %><br />
               <asp:LinkButton ID="LinkButton1" runat="server" Text="View Details" CommandName="VDetails" CommandArgument='<%#Eval("Item_Details_Id") %>'></asp:LinkButton>

           </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
</asp:Content>

