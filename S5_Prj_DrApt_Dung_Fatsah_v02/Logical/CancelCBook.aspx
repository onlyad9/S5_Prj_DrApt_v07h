<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CancelCBook.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Logical.CancelCBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True"
            Text="Cancel Appointment" ForeColor="#229EE2"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Appointment ID:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Font-Underline="True" ForeColor="#229EE2" Text="Appointments History"></asp:Label>

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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
    <style type="text/css">
        #mask {
            position: fixed;
            left: 0px;
            top: 0px;
            z-index: 4;
            opacity: 0.4;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=40)"; /* first!*/
            filter: alpha(opacity=40); /* second!*/
            background-color: gray;
            display: none;
            width: 100%;
            height: 100%;
        }
    </style>

    <script type="text/javascript" language="javascript">
        function ShowPopup() {
            $('#mask').show();
            $('#<%=pnlpopup.ClientID %>').show();
        }
        function HidePopup() {
            $('#mask').hide();
            $('#<%=pnlpopup.ClientID %>').hide();
        }
        $(".btnClose").live('click', function () {
            HidePopup();
        });
    </script>

    <asp:Panel ID="pnlpopup" runat="server" BackColor="White" Height="250px"
        Width="300px" Style="z-index: 111; background-color: White; position: absolute; left: 35%; top: 10%; border: outset 2px gray; padding: 5px; display: none">
        <table width="100%" style="width: 100%; height: 100%;" cellpadding="0" cellspacing="5">
            <tr style="background-color: #0924BC">
                <td colspan="2" style="color: White; font-weight: bold; font-size: 1.2em; padding: 3px"
                    align="center">Alert !!! <a id="closebtn" style="color: white; float: right; text-decoration: none" class="btnClose" href="#">X</a>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 45%; text-align: center;">
                    <asp:Label ID="LabelValidate" runat="server" Text="Want to Cancel  appointment ...Click Ok Button !!!" />
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Ok" OnClick="btnUpdate_Click" />
                    <input type="button" class="btnClose" value="Cancel" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
