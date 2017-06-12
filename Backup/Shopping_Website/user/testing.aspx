<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="testing.aspx.cs" Inherits="Shopping_Website.user.testing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
<br />
<asp:Button ID = "b1" runat = "server" Text = "cookies store" onclick = "b1_Click" />
<asp:Button ID = "b2" runat = "server" Text = "cookies display" onclick = "b2_Click" />
<asp:Button ID = "b3" runat = "server" Text = "cookies update" onclick = "b3_Click" />
<asp:Button ID = "b4" runat = "server" Text = "cookies display using array" onclick = "b4_Click" /> 
</asp:Content>
