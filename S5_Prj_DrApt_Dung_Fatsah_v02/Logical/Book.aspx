<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True"
            Text="Booking New Appointment" ForeColor="#229EE2"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Appointment Id:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Category:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>General practitioners</asp:ListItem>
                        <asp:ListItem>Cardiologists</asp:ListItem>
                        <asp:ListItem>Dermatologists</asp:ListItem>
                        <asp:ListItem>Podiatrists</asp:ListItem>
                        <asp:ListItem>Gynaecologists</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Doctor Name:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server"
                        Style="margin-left: 1px">
                        <asp:ListItem>--Select--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />

        <asp:Label ID="Label4" runat="server" Text="Date:"></asp:Label>
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender"
            OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
      
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check"
            Style="height: 50px; width: 100px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="448px" Width="529px">
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click"
                Text="9:00-9:30" Height="50px" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button8" runat="server" OnClick="Button8_Click"
                Text="9:30-10:00" Height="50px" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button9" runat="server" OnClick="Button9_Click"
                Text="10:00-10:30" Height="50px" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button10" runat="server" OnClick="Button10_Click"
                Text="10:30-11:00" Height="50px" Width="100px" Font-Size="Small" />
            <br />
            <br />
            <asp:Button ID="Button11" runat="server" OnClick="Button11_Click"
                Text="11:00-11:30" Height="50px" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button12" runat="server" OnClick="Button12_Click"
                Text="11:30-12:00" Height="50px" Width="100px" Font-Size="Small" />


            &nbsp;<asp:Button ID="Button41" runat="server" OnClick="Button41_Click"
                Text="12:00-12:30" Height="50px" Width="100px" Font-Size="Small" />

            &nbsp;<asp:Button ID="Button42" runat="server" OnClick="Button42_Click"
                Text="12:30-1:00" Height="50px" Width="100px" Font-Size="Small" />
            <br />
            <br />
            <asp:Button ID="Button43" runat="server" OnClick="Button43_Click"
                Text="1:00-1:30" Height="50px" Width="100px" Font-Size="Small" />

            &nbsp;<asp:Button ID="Button21" runat="server" Height="50px" OnClick="Button21_Click"
                Text="1:30-2:00" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button22" runat="server" Height="50px"
                OnClick="Button22_Click" Text="2:00-2:30" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button23" runat="server" Height="50px"
                OnClick="Button23_Click" Text="2:30-3:00" Width="100px" Font-Size="Small" />
            <br />
            <br />
            <asp:Button ID="Button24" runat="server" Height="50px"
                OnClick="Button24_Click" Text="3:00-3:30" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button25" runat="server" Height="50px"
                OnClick="Button25_Click" Text="3:30-4:00" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button26" runat="server" Height="50px"
                OnClick="Button26_Click" Text="4:00-4:30" Width="100px" Font-Size="Small" />

            &nbsp;<asp:Button ID="Button51" runat="server" Height="50px"
                OnClick="Button51_Click" Text="4:30-5:00" Width="100px" Font-Size="Small" />
            <br />
            <br />
            <asp:Button ID="Button52" runat="server" Height="50px"
                OnClick="Button52_Click" Text="5:00-5:30" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button53" runat="server" Height="50px"
                OnClick="Button53_Click" Text="5:30-6:00" Width="100px" Font-Size="Small" />



            &nbsp;<asp:Button ID="Button13" runat="server" Height="50px"
                OnClick="Button13_Click" Text="6:00-6:30" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button14" runat="server" Height="50px"
                OnClick="Button14_Click" Text="6:30-7:00" Width="100px" Font-Size="Small" />
            <br />
            <br />
            <asp:Button ID="Button15" runat="server" OnClick="Button15_Click"
                Text="7:00-7:30" Height="50px" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button16" runat="server" OnClick="Button16_Click"
                Text="7:30-8:00" Height="50px" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button17" runat="server" OnClick="Button17_Click"
                Text="8:00-8:30" Height="50px" Width="100px" Font-Size="Small" />
            &nbsp;<asp:Button ID="Button18" runat="server" OnClick="Button18_Click"
                Text="8:30-9:00" Height="50px" Width="100px" Font-Size="Small" />
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" Height="50px" OnClick="Button6_Click"
                Text="Book" Visible="False" Width="100px" />
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label
            ID="Label10" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="0" Visible="False"></asp:Label>
        <br />
        <br />
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

            .auto-style1 {
                width: 100%;
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
                        align="center">Information !!!<a id="closebtn" style="color: white; float: right; text-decoration: none" class="btnClose" href="#">X</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 45%; text-align: center;">
                        <asp:Label ID="LabelValidate" runat="server" Text="if you want to book this slot.. click ok" />
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


    </div>

</asp:Content>
