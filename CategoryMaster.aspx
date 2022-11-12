<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="CategoryMaster.aspx.cs" Inherits="CategoryMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 600px;
            border: 1px solid #FF0000;
           
        }
        .auto-style5 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" BGCOLOR="gray" style="padding-bottom:20px; padding-top:20px">
                <table align="center" cellpadding="0" cellspacing="0" class="auto-style4">
                    <tr>
                        <td colspan="3" style="padding-left:10px; padding-top:10px;" class="auto-style5"><strong>ADD CATEGORY DETAILS</strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding-left:10px; padding-top:10px;" class="auto-style6">Category Name</td>
                        <td class="auto-style6">:</td>
                        <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Write Category Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:10px; padding-top:10px;" class="auto-style6">Category Image</td>
                        <td class="auto-style6">:</td>
                        <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="padding-bottom:10px; padding-top:10px;">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" Width="200px" />
                        &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="UPDATE" Visible="False" />
                            <asp:HiddenField ID="hfCategeoryId" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="padding-bottom:10px; padding-top:10px;">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="text-align: left; padding-top:10px;">
               
               
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1200px" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Category Image">
                            <ItemTemplate>

                                <img src="<%#Eval("Category_Image") %>" width="100" height="100" />
                            </ItemTemplate>

                        </asp:TemplateField>
                        <asp:BoundField DataField="Category_Name" HeaderText="Category Name" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                
                                <asp:LinkButton ID="LinkButton2" runat="server" Text="Edit" CommandName="Ed" CommandArgument='<%#Eval("Categeory_Id") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" Text="Delete" CommandName="Del" CommandArgument='<%#Eval("Categeory_Id") %>'></asp:LinkButton>
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
                </asp:GridView>
               
               
               </td>
        </tr>
    </table>
</asp:Content>

