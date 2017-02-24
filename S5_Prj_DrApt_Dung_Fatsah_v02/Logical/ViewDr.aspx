<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewDr.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Logical.ViewDr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" ForeColor="#229EE2" Text="Doctor Details"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        <Columns>
            <asp:BoundField DataField="DId" HeaderText="Dr ID" />
            <asp:BoundField DataField="Name" HeaderText="|Dr Name" />
            <asp:BoundField DataField="Address" HeaderText="|Address" />
            <asp:BoundField DataField="Mobile" HeaderText="|Mobile" />
            <asp:BoundField DataField="Cate" HeaderText="|Category" />
            <asp:BoundField DataField="Email" HeaderText="|Email" />
        </Columns>
    </asp:GridView>

</asp:Content>
