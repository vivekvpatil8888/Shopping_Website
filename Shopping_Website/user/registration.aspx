<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true"
    CodeBehind="registration.aspx.cs" Inherits="Shopping_Website.user.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <table>
        <tr>
            <td>
                First Name
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Last Name
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email Name
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Address
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="71px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                City
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                State
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                PinCode
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Mobile No
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Register" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
