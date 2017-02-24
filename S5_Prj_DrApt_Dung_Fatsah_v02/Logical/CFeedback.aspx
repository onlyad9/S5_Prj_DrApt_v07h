<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CFeedback.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Logical.CFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" ForeColor="#229EE2" Text="Patient Feedback"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Feedback:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="139px" TextMode="MultiLine" Width="375px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        <br />
    </div>

</asp:Content>
