<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true"
    CodeBehind="display_order.aspx.cs" Inherits="Shopping_Website.admin.display_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <asp:Repeater ID="r1" runat="server" >
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
                        City
                    </td>
                    <td>
                        State
                    </td>
                    <td>
                        Pincode
                    </td>
                    <td>
                        View Order
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
                    <%#Eval ("city") %>
                </td>
                <td>
                    <%#Eval ("state") %>
                </td>
                <td>
                    <%#Eval ("pincode") %>
                </td>
                 <td>
                    <a href = "view_full_order.aspx?id = <%#Eval("id") %>">View Order</a>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
