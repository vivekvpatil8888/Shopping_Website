<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="product_desc.aspx.cs" Inherits="Shopping_Website.user.product_desc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

<asp:Repeater ID = "d1" runat = "server">
 <HeaderTemplate>

 </HeaderTemplate>
 <ItemTemplate>
  <div style = "height:300px; width:600px; border-style:solid; border-width:1px">

  <div style = "height:300px; width:200px; float: left; border-style:solid; border-width:1px">

  <img src = '../<%#Eval("product_image") %>' height = "300" width = "200" /></div>

  <div style = "height:300px; width:395px; float:left; border-style:solid; border-width:1px">
   item name = <%#Eval("product_name") %>
      <br></br>
   product desc = <%#Eval("product_desc") %>
      <br></br>
   product price = <%#Eval("product_price") %>
      <br></br>
   product qty = <%#Eval("product_qty") %>
      <br></br>

  </div>

  </div>
         
 </ItemTemplate>
 <FooterTemplate>

 </FooterTemplate>
</asp:Repeater>
  <br />

  <table>
  <tr>
  <td> <asp:Label ID = "l2" runat = "server" Text = "Enter Quantity"></asp:Label></td>
  <td><asp:TextBox ID = "t1" runat = "server"> </asp:TextBox></td>
  <td><asp:Button ID = "b1" runat = "server" Text = "Add To Cart" onClick = "b1_Click" /></td>
  </tr>
  <tr>
  <td colspan = "3" >
  <asp:Label ID = "l1" runat = "server" ForeColor = "Red" Text = ""></asp:Label>
  </td>
  </tr>
  </table>
  
</asp:Content>
