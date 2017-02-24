using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S5_Prj_DrApt_Dung_Fatsah_v02.Account
{
    public partial class DrLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string s = "Select Pass,Name from Doctor where DId='" + TbId.Text + "'";
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
                    Session["fname"] = "doc";
                    Session["DId"] = TbId.Text;
                    Session["DName"] = dr[1].ToString();
                    Response.Redirect("~/Logical/ViewC.aspx");
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