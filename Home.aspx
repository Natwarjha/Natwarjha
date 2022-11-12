<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" RepeatColumns="4" RepeatDirection="Horizontal" Width="1200px" OnItemCommand="DataList1_ItemCommand" >
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
           
           <ItemTemplate>
             
              
               <img src=" <%#Eval("Category_Image") %>" width="250" height="250" /><br />
  
               <%#Eval("Category_Name") %><br />
               <asp:LinkButton ID="LinkButton1" runat="server" Text="View Details" CommandName="View" CommandArgument='<%#Eval("Categeory_Id") %>'></asp:LinkButton>

           </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </p>
</asp:Content>

