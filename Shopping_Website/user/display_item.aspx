<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="display_item.aspx.cs" Inherits="Shopping_Website.user.display_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
<asp:Repeater ID = "d1" runat = "server">
<HeaderTemplate>
<ul>
</HeaderTemplate>
<ItemTemplate>

          <li class="product"> 
          <a href="product_desc.aspx?id=<%#Eval("id") %>"><img src="../<%#Eval("product_image") %>" alt="" /></a>
            <div class="product-info">
              <h3><%#Eval("product_name") %></h3>
              <div class="product-desc">
                <h4>Available Qty: <%#Eval("product_qty") %></h4>
                <p><%#Eval("product_desc") %><br />
                  amet</p>
                <strong class="price"><%#Eval("product_price") %></strong> </div>
            </div>
          </li>
</ItemTemplate>
<FooterTemplate>
</ul>
</FooterTemplate>
</asp:Repeater>
</asp:Content>
