<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ItemsDetails.aspx.cs" Inherits="ItemsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
            color: #993399;
            font-size: x-large;
        }
        .auto-style2 {
            width: 600px;
            background-color: #FF9999;
            /*border: 1px solid #FF0000;*/
        }
        .auto-style6 {
            width: 600px;
            border-color: #FF0000;
            border: 1px solid #FF0000;
            width: 800px; 
        }
        .auto-style8 {
            color: #FFFFFF;
        }
        .auto-style9 {
            height: 27px;
            text-align: left;
        }
        .auto-style10 {
            height: 27px;
            color: #FFFFFF;
        }
        .auto-style11 {
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style12 {
            height: 27px;
            color: #FFFFFF;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style1" >
        <tr>
            <td class="auto-style4" BGCOLOR="gray">
                 
                <table align="center" cellspacing="0" class="auto-style6">
                    
                    <tr>
                        <td colspan="3" class="auto-style8"><strong>ITEMS DETAILS</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style11">CATEGORY-ID</td>
                        <td style="color: #FFFFFF">:</td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">ITEM-NAME</td>
                        <td class="auto-style10">:</td>
                        <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Name" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">ITEM-IMAGE</td>
                        <td class="auto-style8">:</td>
                        <td style="text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">ITEM-PRICE</td>
                        <td class="auto-style8">:</td>
                        <td style="text-align: left">
                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Price" ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid price." ValidationExpression="\d{1,5}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">ITEM-SPECFICATION</td>
                        <td class="auto-style8">:</td>
                        <td style="text-align: left">
                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Plese Enter Item-Specfication" ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">ITEM-DETAILS</td>
                        <td class="auto-style8">:</td>
                        <td style="text-align: left">
                <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter Item-Details" ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
            <td class="auto-style11">WARRANTY</td>
            <td style="color: #FFFFFF">:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter Warranty" ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
            </td>
                    </tr>
                    <tr>
            <td class="auto-style11">BRAND</td>
            <td class="auto-style8">:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Ente Brand" ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" ForeColor="Black" Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="padding-bottom:10px;padding-top:10px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="1200px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                                     <img src="<%#Eval("Item_image") %>" width="100" height="100" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Item_Name" HeaderText="Item Name" />
                        <asp:BoundField DataField="Item_Price" HeaderText="Item Price" />
                        <asp:BoundField DataField="Item_Specification" HeaderText="Item Specification" />
                        <asp:BoundField DataField="Item_Detail" HeaderText="Item Detail" />
                        <asp:BoundField DataField="Warranty" HeaderText="Warranty" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>

                                <asp:LinkButton ID="LinkButton1" runat="server" Text="Delete" CommandName="Del1" CommandArgument='<%#Eval("Item_details_Id") %>'></asp:LinkButton>
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

