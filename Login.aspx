<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Projects.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; height: 246px;">
        <tr>
            <td bgcolor="lightgreen" colspan="2" align="center" ><b><u>Login</u></b></td>
        </tr>
        <tr>
            <td style="width: 217px"><b>Username:</b></td>
            <td>
                <asp:TextBox ID="user" runat="server" Width="369px" Height="36px" style="margin-top: 0px" TextMode="Email"></asp:TextBox>
                <asp:Label ID="user_l" runat="server" Text="Enter Username" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 217px"><b>Password</b></td>
            <td>
                <asp:TextBox ID="pass" runat="server" Width="370px" Height="36px" TextMode="Password"></asp:TextBox>
                <asp:Label ID="pass_l" runat="server" Text="Enter password" Visible="false"></asp:Label>
            </td>
        </tr>
         <tr>
             <td colspan="2">
                 <asp:Label ID="Label" runat="server"  Visible="false"></asp:Label>
             </td>
        </tr>
         <tr>
             <td style="width: 217px">
                 <asp:Button ID="register" runat="server" Height="35px" Text="Register" Width="176px" OnClick="register_Click" />

             </td>
                 <td> <asp:Button ID="log" runat="server" Text="Login" Height="35px" Width="176px" style="margin-top: 0px; margin-left: 150px;" OnClick="log_Click" />
             </td>
        </tr>
    </table>
</asp:Content>
