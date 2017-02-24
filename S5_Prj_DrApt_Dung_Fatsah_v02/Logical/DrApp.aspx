<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DrApp.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Logical.DrApp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" ForeColor="#229EE2" Text="Dr Appointments"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" OnRowCommand="GridView1_RowCommand">
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
                <asp:BoundField DataField="AId" HeaderText="App ID" />
                <asp:BoundField DataField="UId" HeaderText="|Patient ID" />
                <asp:BoundField DataField="DName" HeaderText="|Dr Name" />
                <asp:BoundField DataField="Date" HeaderText="|App Date" />
                <asp:BoundField DataField="Time" HeaderText="|App Time" />
            </Columns>
            <Columns>
                <asp:TemplateField HeaderText="|Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="yes" runat="server" CommandArgument='<%#Eval("AId")%>' CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this Appointment?');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
    </div>

</asp:Content>
