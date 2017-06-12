<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="view_full_order.aspx.cs" Inherits="Shopping_Website.admin.view_full_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
<asp:Repeater ID="r2" runat="server" >
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: Gray; color: White">
                    <td>
                        id
                    </td>
                    <th>
                        First Name
                    </th>
                    <td>
                        Last Name
                    </td>
                    <td>
                        email
                    </td>
                    <td>
                        address
                    </td>
                    <td>
                        City
                    </td>
                    <td>
                        State
                    </td>
                    <td>
                        Pincode
                    </td>
                    <td>
                        mobile
                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <%#Eval ("id") %>
                </td>
                <td>
                    <%#Eval ("firstname") %>
                </td>
                <td>
                    <%#Eval ("lastname") %>
                </td>
                <td>
                    <%#Eval ("email") %>
                </td>
                <td>
                    <%#Eval ("address") %>
                </td>
                <td>
                    <%#Eval ("city") %>
                </td>
                <td>
                    <%#Eval ("state") %>
                </td>
                <td>
                    <%#Eval ("pincode") %>
                </td>
                <td>
                    <%#Eval ("mobile") %>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
<asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: Gray; color: White">
                    <td>
                       Product Image
                    </td>
                    <td>
                        Produt Name
                    </td>
                    <td>
                        Product Price
                    </td>
                    <td>
                        Product Quantity
                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <img src = "../<%#Eval ("product_images") %>" height ="100" width="100" alt=""/>
                </td>
                <td>
                    <%#Eval ("product_name") %>
                </td>
                <td>
                    <%#Eval ("product_price") %>
                </td>
                <td>
                    <%#Eval ("product_qty") %>
                </td>
                 <td>
                    <a href = "view_full_order.aspx?id=<%#Eval("id") %>">View Order</a>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
    <asp:Label ID = "l1" runat = "server" Text = ""></asp:Label>
</asp:Content>
