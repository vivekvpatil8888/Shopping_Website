<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="view_cart.aspx.cs" Inherits="Shopping_Website.user.view_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div>
        
         <asp:DataList ID = "d1" runat = "server">
         <HeaderTemplate>
         <table>
         <tr style = "background-color:Red; color:White; font-weight:bold">
         <td>Product Image</td>
         <td>Produt Name</td>
         <td>Product Description</td>
         <td>Product Price</td>
         <td>Product qty</td>
         <td>Delete</td>
         </tr>
         </HeaderTemplate>

         <ItemTemplate>
         <tr>
         <td><imd src = "../<%# Eval("product_image")%>" height = "200" width = "200" alt="" /></td>
         <td><%# Eval("product_name")%></td>
         <td><%# Eval("product_desc")%></td>
         <td><%# Eval("product_price")%></td>
         <td><%# Eval("product_qty")%></td>
         <td>
         <a href="delete_cart.aspx?id=<%#Eval("id") %>">Delete</a>
         </td>
         </tr>

         </ItemTemplate>

         <FooterTemplate>
         </table>
         </FooterTemplate>
         </asp:DataList>
         <br />
         <p align = "center">
         <asp:Label ID = "l1" runat= "server" ></asp:Label><br />
         <asp:Button ID = "b1" runat = "server" Text = "Checkout" onclick="b1_Click" />
         </p>

    </div>
  </asp:Content>
