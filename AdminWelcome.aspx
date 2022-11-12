<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminWelcome.aspx.cs" Inherits="AdminWelcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align:center">
     <asp:Label ID="LblWelcome" runat="server" Text="WELCOME IN ADMIN PANEL" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
       </p>
</asp:Content>

