<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Projects.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; height: 100%;">
        <tr>
            <td colspan="2" align="center" bgcolor="lightgreen"><b><u>Registration</u></b></td>
        </tr>
        <tr>
            <td style="width: 184px; height: 29px;"><b>Name:</b></td>
            <td style="height: 29px">
                <asp:TextBox ID="name" runat="server" Width="237px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="names" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="name" Text="Details Reuired" ></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 184px"><b>Address:</b></td>
             <td>
                 <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Width="238px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="addres" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="address" Text="Details Reuired" ></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 184px"><b>Mobile No:</b></td>
             <td>
                 <asp:TextBox ID="mobile" runat="server" Width="235px" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="phone" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="mobile" Text="Details Reuired" ></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 184px; height: 27px;"><b>Gender</b></td>
             <td style="height: 27px">
                 <asp:RadioButton ID="male" runat="server" Text="Male" GroupName="Gender" OnCheckedChanged="male_CheckedChanged" />
                 <asp:RadioButton ID="female" runat="server" Text="Female" GroupName="Gender" OnCheckedChanged="female_CheckedChanged" />
             </td>
        </tr>
        <tr>
            <td style="width: 184px"><b>Date Of Birth</b></td>
            <td>
                <asp:TextBox ID="dob" runat="server" TextMode="Date" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="dateofbirth" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="dob" Text="Details Reuired" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 184px"><b>User Id:</b></td>
            <td>
                <asp:TextBox ID="userid" runat="server" TextMode="Email" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="email" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="userid" Text="Details Reuired" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 184px"><b>Password</b></td>
            <td>
                <asp:TextBox ID="password" runat="server" TextMode="Password" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="pass" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="password" Text="Details Reuired" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 184px"><b>Confirm Password</b></td>
            <td>
                <asp:TextBox ID="cpassword" runat="server" TextMode="Password" Width="236px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="cpass" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="cpassword" Text="Details Reuired" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="reg" runat="server" Text="Register" Width="243px" style="margin-left: 187px" OnClick="reg_Click" BackColor="#CCCC00" BorderColor="#CCFF99" BorderStyle="Solid" />
               
            </td>
        </tr>
    </table>
</asp:Content>