using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S5_Prj_DrApt_Dung_Fatsah_v02.Logical
{
    public partial class ViewApp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("Select AId,UId, DName,Date,Time from App where Date >= '" + DateTime.Now.ToShortDateString() + "'" + " ORDER BY UId Asc ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string i = e.CommandArgument.ToString();
                //int rowIndex = Convert.ToInt32(e.CommandArgument); // Get the current row
                //GridViewRow row = GridView1.Rows[rowIndex];
                //string AId = row.Cells[0].Text;
                //string UId = row.Cells[1].Text;
                // int AId = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[0].Text);
                // int UId = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[1].Text);

                //string s = "delete from App where AId='" + i + "'";
                //SqlCommand cmd = new SqlCommand(s, con);
                //con.Open();
                //cmd.ExecuteNonQuery();
                //con.Close();
                //Page_Load(sender, e);
                CancelApp(i);
                Response.Redirect("ViewApp.aspx");

            }
        }
        protected void SendEmail(string appId, string uId , string drName, string uName, string uEmail, string appDate, string appTime)
        {
            string id = "cbdeb.prj@gmail.com";
            string pass = "iPtPhn17eS";

            //string umail = Session["email"].ToString();
            //string uname = Session["name"].ToString();
            //string uId = Session["Id"].ToString();
            //string aDate = Session["date"].ToString();
            //string aTime = Session["time"].ToString();

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress(id);
            mail.To.Add(uEmail);
            mail.Subject = "Doctor Appointment Cancel Alert";
            mail.Body = "Hi '" + uName + "' with Id '" + uId + "', your Appointment Id: '" + appId + "' with Dr '" + drName + "' on the date " + appDate + " and time " + appTime + " has been Cancelled";


            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential(id, pass);
            SmtpServer.EnableSsl = true;

            // I add the below line in order to login Gmail
            ServicePointManager.ServerCertificateValidationCallback = delegate(object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };


            SmtpServer.Send(mail);

            //TextBox1.Text = "";
            //UpdateGridView();
        } // protected void SendEmail()

        protected void CancelApp(string appId)
        {
            SqlCommand cmd = new SqlCommand("Select * from App where AId = '" + appId + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            

            if (dr.HasRows)
            {
                dr.Read();
                string patientId = dr[1].ToString();
                string drName = dr[2].ToString();
                string appDate = dr[3].ToString();
                string appTime = dr[4].ToString();

                con.Close();

                SqlCommand cmdCust = new SqlCommand("Select * from Cust where UId = '" + patientId + "'", con);
                con.Open();
                SqlDataReader drCust = cmdCust.ExecuteReader();
                drCust.Read();
                string patientName = drCust[1].ToString();
                string patientEmail = drCust[4].ToString();

                con.Close();

                cmd = new SqlCommand("Delete from App where AId = '" + appId + "' And UId='" + patientId + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Appointment Canceled Successfully');", true);

                SendEmail(appId, patientId, drName, patientName, patientEmail, appDate, appTime);
            }
            else
            {
                con.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Invalid Id');", true);
            }

        }// protected void CancelApp(string appId)
    }
}