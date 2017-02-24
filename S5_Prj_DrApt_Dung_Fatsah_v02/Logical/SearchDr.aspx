<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchDr.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Logical.SearchDr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" ForeColor="#229EE2" Text="Search Doctor "></asp:Label>
    <br />
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Search By:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Name</asp:ListItem>
                    <asp:ListItem>Category</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Text  To Search For:  "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="184px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Visible="False" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" Visible="False" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" Visible="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />

    <asp:Panel ID="Panel4" runat="server" Height="150px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
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
                <asp:BoundField DataField="Mobile" HeaderText="|Mobile" />
                <asp:BoundField DataField="Cate" HeaderText="|Category" />
                <asp:BoundField DataField="Email" HeaderText="|Email" />
            </Columns>
        </asp:GridView>
    </asp:Panel>

</asp:Content>
