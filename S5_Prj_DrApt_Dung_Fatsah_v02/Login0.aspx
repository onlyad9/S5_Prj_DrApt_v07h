<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login0.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--  <h2 style="color: #229EE2">Choose Your Login</h2> --%>

        <br />
        <br />
        
        <table  style="padding-left: 50px; margin-left: 213px;">

       <tr>
           <td ><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Account/Help.aspx"><img src="images/helpRedBtn.jpg" /></asp:HyperLink></td>
       <td ><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Account/AdminLogin.aspx"><img src="images/adminLoginRedBtn.jpg" /></asp:HyperLink></td>
       <td><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Account/DrLogin.aspx"><img src="images/doctorLoginBlueBtn.jpg" /></asp:HyperLink></td>
       <td ><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Account/CLogin.aspx"><img src="images/patientLoginGreenBtn.jpg" /></asp:HyperLink></td>
           <td ><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Account/CReg.aspx"><img src="images/patientRegisterYellowBtn2.jpg" /></asp:HyperLink></td>
       </tr>
        </table> 
        <br />
        
    </div>
        <p>
            &nbsp;</p>

    </form>
</body>
</html>
