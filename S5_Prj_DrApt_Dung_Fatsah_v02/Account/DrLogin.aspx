<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DrLogin.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Account.DrLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table class="auto-style1">
        <%--     <tr>
        <td align="left" width="50%">
            <asp:Label ID="Lable1" runat="server" Text="Dr ID  :-"></asp:Label>
        </td>
        <td width="50%">
            <asp:TextBox ID="id" runat="server" Width="127px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left" width="50%">
            <asp:Label ID="Label3" runat="server" Text="Password :-"></asp:Label>
        </td>
        <td width="50%">
            <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="127px"></asp:TextBox>
        </td>
    </tr>
        --%>
        <tr>
            <td class="auto-style2">Doctor ID:<br />
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
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%-- 
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
&nbsp;
<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
    --%>
</asp:Content>
