<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewC.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Logical.ViewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="LblPatientsDetails" runat="server" Font-Size="X-Large" Font-Underline="True" ForeColor="#229EE2" Text="View All Patients Details"></asp:Label>
    <br />
    <br />
    <asp:Label ID="LblPatientId" runat="server" Text="Patient ID  :"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
    <br />
    <br />
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
            <asp:BoundField DataField="UId" HeaderText="Patient ID" />
            <asp:BoundField DataField="Name" HeaderText="|Patient Name" />
            <asp:BoundField DataField="Address" HeaderText="|Address" />
            <asp:BoundField DataField="Mobile" HeaderText="|Mobile" />
            <asp:BoundField DataField="Email" HeaderText="|Email" />
            <asp:BoundField DataField="Sex" HeaderText="|Sex" />
            <asp:BoundField DataField="Age" HeaderText="|Age" />
            <asp:BoundField DataField="Bg" HeaderText="|BloodGroup" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Panel ID="Panel4" runat="server" Height="247px" Visible="False">
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="Large" Font-Underline="True" ForeColor="#229EE2" Text="Pactient's Treatment History"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
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
                <asp:BoundField DataField="UId" HeaderText="Patient ID" />
                <asp:BoundField DataField="Dise" HeaderText="|Patient Disease" />
                <asp:BoundField DataField="Treatment" HeaderText="|Patient Treatment" />
                <asp:BoundField DataField="DNote" HeaderText="|Dr Note" />
            </Columns>
        </asp:GridView>
        <br />
    </asp:Panel>

</asp:Content>
