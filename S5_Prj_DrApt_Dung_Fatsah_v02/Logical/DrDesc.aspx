<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DrDesc.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Logical.DrDesc" %>

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
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" ForeColor="#229EE2" Text="Add Treatment"></asp:Label>
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
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Patient ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
            </td>
        </tr>
    </table>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    &nbsp;
    <br />
    <asp:Panel ID="Panel4" runat="server" Height="290px" Visible="False">
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Patient Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TbPatientName" runat="server" Enabled="False" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Disease:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="50px" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Treatment:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="50px" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Note:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="50px" TextMode="MultiLine" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" /></td>
                <td>&nbsp;</td>
            </tr>

        </table>

        <br />
    </asp:Panel>

</asp:Content>
