<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Login" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Doctor Appointment Booking System</h1>
    </hgroup>

    <article>
                
            <h3>This web site allow you to take or cancel any appointment with any doctor of your choice 24/7 </h3>



        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Account/CReg.aspx"><img src="images/patientRegisterYellowBtn2_113x113.jpg" /></asp:HyperLink></td>
                <td>If you are new to our system and have never meet one of our Doctor before, please register.</td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Account/CLogin.aspx"><img src="images/patientLoginGreenBtn113x113.jpg" /></asp:HyperLink></td>
                <td>If you are already regsiter and you want to book an appointment with our Doctor please loging as a patient.</td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Account/DrLogin.aspx"><img src="images/doctorLoginBlueBtn113x113.jpg" /></asp:HyperLink></td>
                <td>If you are one of our Doctor, please login as a Doctor.</td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Account/AdminLogin.aspx"><img src="images/adminLoginRedBtn113x113.jpg" /></asp:HyperLink></td>
                <td>If you are the Administrator of our system.</td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Account/Help.aspx"><img src="images/helpRedBtn109x117.jpg" /></asp:HyperLink></td>
                <td>Help on how to use our system.</td>
            </tr>

        </table>

    </article>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100px;
        }
    </style>
</asp:Content>
