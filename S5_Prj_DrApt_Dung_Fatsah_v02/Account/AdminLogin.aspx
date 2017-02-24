<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Account.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Admin ID:<br />
                <asp:RequiredFieldValidator ID="RfvId" runat="server" ControlToValidate="TbId" ErrorMessage="Id is required" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                

            </td>
            <td>
                <asp:TextBox ID="TbId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:<br />
                <asp:RequiredFieldValidator ID="RfvPassword" runat="server" ControlToValidate="TbPassword" ErrorMessage="Password is required" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TbPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" />
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
