<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="S5_Prj_DrApt_Dung_Fatsah_v02.Account.Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 260px;
        }
    </style>
    <style>
table, th, td {
    border: 1px solid black;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        * * * NOTE:
        The Sql Script to create the Database to be used with this application is in the directory of this project under the name of Data.
    </h3>
    <p>
        &nbsp;
    </p>



    <table class="auto-style1" border="1">
        <tr>
            <td class="auto-style2">Admin ID : Admin
        <br />
                Password: 1234
            </td>
            <td>



                <p>
                    Functionnality:
        <ol>
            <li>Only an Admin can add a new Doctor and the details to the Database.
                <br />
                When the Admin add a new Dr, he/she will specify what category this Dr belongs to.<br />
                In our example we defines 5 different kind of category.<br />
                In this application, the list of Dr Category is hard coded in the DropDownList in the AddDr.aspx and Book.aspx.

            </li>
            <li>Only an Admin can see the list of all the Doctors to the Database. 

            </li>

            <li>Only an Admin can see and delete all the appointments from all the Doctors from the Database. 
                <br />
                Each time the Admin cancel a patient's appointment, an email is send (only) to the patient.
            </li>
            <li>Only an Admin can see all the feedbacks from all patients in the Database. 

            </li>
        </ol>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Doctor ID: 101<br />
                Password: 1234<br />
                <br />
        <br />
                There is already a list of 6 Doctors from 101 to 106 with the same password "1234"
            </td>
            <td>Functionnality:<br />

                <ol>
                    <li>A Doctor can change most of his/her details, except his/her category.
                    <br />
                        Only an Admin can change his/her Dr Category, 

                    </li>
                    <li>Each Dr can only see the list of his/her appointments</li>
                    <li>Each Dr can see the list of all the patients of this medical clinic</li>
                    <li>Each Dr can see delete any appointment of his/her patients of this medical clinic.
                        <br />
                        Each time the Dr cancel his/her appointment, an email is send (only) to the patient.
                    </li>
                    <li>Each Dr can add &amp; see the proposed treatment on any patients in our database.
                        <br />
                        (Each proposed treatment has 3 fields: the disease, the treatment and note)
                    </li>

                </ol>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Patient ID: 1001<br />
                Password: 1234<br /><br />
        <br />
                There is already a list of 3 patients from 1001 to 1003 with the same password "1234"
            </td>
            <td>Functionnality:<br />
                <ol>
                    <li>A patient can change all of his/her details.
                    </li>
                    <li>Each patient can only see, book or cancel his/her appointments.<br />
                        A patient can also cancel his/her appointment by the AppointmentID.<br />
                        This functionnality is not implemented in the Admin section due to the lack of time.
                    </li>
                    <li>Each time a patient cancel his/her appointment, an email is (both) send to the selected Dr and him/herself.<br />
                         In the sended email, the name of the Dr, the date and time of the appointment is specified.</li>
                    <li>Any patient can search for a Dr by the name or by the Category. <br />
                        The patient need not to specify the complete name or category. <br />
                        This application can search from a partial name or category.

                    </li>
                    <li>Each patiend can give his/her feedback. <br />
                        And (only) the Admin can read all the patients feedback.

                    </li>


                </ol>
            </td>
        </tr>
    </table>



    <p>
        <br />
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>

</asp:Content>
