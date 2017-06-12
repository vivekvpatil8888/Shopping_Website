<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true"
    CodeBehind="login.aspx.cs" Inherits="Shopping_Website.user.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <table>
        <tr>
            <td>
                Enter Email-ID
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Enter Password
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td colspan = "2" align = "center">
            <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
        </td>
        </tr>
          <tr>
        <td colspan = "2" align = "center">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </td>
        </tr>
    </table>
</asp:Content>
