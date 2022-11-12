<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ItemFullDetails.aspx.cs" Inherits="ItemFullDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            
        }
        .auto-style5 {
            width: 100%;
            background-color: #FFCCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="1" class="auto-style4">
        <tr>
            <td>
               <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="4" RepeatDirection="Horizontal" Width="1200px" OnItemCommand="DataList1_ItemCommand"  >
                   <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           
                   <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
           
           <ItemTemplate>
               <table cellpadding="0" cellspacing="0" class="auto-style4">
                    <tr>
                        <td rowspan="23" style="vertical-align:top"><img src=" <%#Eval("Item_Image") %>" width="500" height="600" /></td>
                        <td><%#Eval("Item_Name") %></td>
                    </tr>
                    <tr >
                        <td><b>Price - </b><%#Eval("Item_Price") %></td>
                    </tr>
                    <tr>
                        <td align="left"><b>Specification</b> <br /><%#Eval("Item_Specification") %></td>
                    </tr>
                    <tr>
                        <td><b>Details</b> <br /></b></b><%#Eval("Item_Detail") %></td>
                    </tr>
                    <tr>
                        <td><b>Brand - </b><%#Eval("Item_Brand") %></td>
                    </tr>
                    <tr>
                        <td><b>Warranty</b> <%#Eval("Warranty") %></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left"><asp:LinkButton ID="LinkButton2" runat="server" Text="ADD TO CART " CommandName="Acart" CommandArgument='<%#Eval("Item_details_Id") %>'></asp:LinkButton></td></td>
                    <%--</tr>--%>
                   <%-- <tr>--%>
                        <td align="right" width="100"><asp:LinkButton ID="LinkButton1" runat="server" Text="BUY NOW" CommandName="View" CommandArgument='<%#Eval("Item_details_Id") %>'></asp:LinkButton></td>
                    </tr>
                   <tr>
                        <td>
                            
                    </tr>
                </table>
              
               

           </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:LinkButton ID="LinkButton3" runat="server" align="center" Text="Review" CommandName="Review" CommandArgument='<%#Eval("Review_Id") %>' OnClick="LinkButton3_Click" ></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table cellpadding="0" cellspacing="0" class="auto-style5">
                        <tr>
                            <td >
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                                    <Columns>
                                        <asp:BoundField DataField="Write_Review" HeaderText="Customer Review" />
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>Write your review
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>


                </asp:Panel> 
             </td>
        </tr>
    </table>
</asp:Content>

