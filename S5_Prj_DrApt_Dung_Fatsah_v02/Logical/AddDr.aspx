<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDr.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Logical.AddDr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 508px;
        }

        .auto-style3 {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" ForeColor="#229EE2" Text="Add Doctor "></asp:Label>
    <br />
    <br />
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Dr ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="FirstName LastName:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a valid name" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="36px" TextMode="MultiLine" Width="202px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Mobile No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid Mobile Number" Font-Size="Small" ForeColor="Red" ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TbEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TbEmail" ErrorMessage="Enter Valid Email ID" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Category:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>General practitioners</asp:ListItem>
                    <asp:ListItem>Cardiologists</asp:ListItem>
                    <asp:ListItem>Dermatologists</asp:ListItem>
                    <asp:ListItem>Podiatrists</asp:ListItem>
                    <asp:ListItem>Gynaecologists</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblPassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TbPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbPassword" ErrorMessage="Enter a password" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="LblComfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TbComfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TbComfirmPassword" ErrorMessage="Enter the same password as above" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>


    </table>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
    <asp:Button ID="BtnCancel" runat="server" OnClick="BtnCancel_Click" Text="Cancel" Enabled="False" Visible="False" />
    <br />
</asp:Content>
