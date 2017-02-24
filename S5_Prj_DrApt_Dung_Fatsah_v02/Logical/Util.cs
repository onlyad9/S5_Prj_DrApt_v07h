using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace S5_Prj_DrApt_Dung_Fatsah_v02.Logical
{
    public class Util
    {
        //protected void SendEmail(string AId, Session )
        //{
        //    string id = "cbdeb.prj@gmail.com";
        //    string pass = "iPtPhn17eS";

        //    string umail = Session["email"].ToString();
        //    string uname = Session["name"].ToString();
        //    string uId = Session["Id"].ToString();
        //    //string aDate = Session["date"].ToString();
        //    //string aTime = Session["time"].ToString();

        //    MailMessage mail = new MailMessage();
        //    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
        //    mail.From = new MailAddress(id);
        //    mail.To.Add(umail);
        //    mail.Subject = "Doctor Appointment Cancel Alert";
        //    mail.Body = "Hi '" + uname + "' with Id '" + uId + "', your Appointment Id: '" + AId + "' has been Cancelled";


        //    SmtpServer.Port = 587;
        //    SmtpServer.Credentials = new System.Net.NetworkCredential(id, pass);
        //    SmtpServer.EnableSsl = true;

        //    // I add the below line in order to login Gmail
        //    ServicePointManager.ServerCertificateValidationCallback = delegate(object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };


        //    SmtpServer.Send(mail);

        //    TextBox1.Text = "";
        //    UpdateGridView();
        //} // protected void SendEmail()
    }
}