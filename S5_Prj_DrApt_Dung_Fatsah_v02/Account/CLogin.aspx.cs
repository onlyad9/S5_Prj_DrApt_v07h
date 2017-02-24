using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S5_Prj_DrApt_Dung_Fatsah_v02.Account
{
    public partial class PatientLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string s = "Select Pass,Name,Mobile,Email,Bg from Cust where UId='" + TbId.Text + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                string pas = dr[0].ToString();
                if (TbPassword.Text == pas)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Login Sucessful');", true);
                    Session["fname"] = "user";
                    Session["id"] = TbId.Text;
                    Session["name"] = dr[1].ToString();
                    Session["mob"] = dr[2].ToString();
                    Session["email"] = dr[3].ToString();
                    Session["bg"] = dr[4].ToString();
                    Response.Redirect("~/Logical/Book.aspx");

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong Password');", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong ID');", true);
            }
        }
    }
}