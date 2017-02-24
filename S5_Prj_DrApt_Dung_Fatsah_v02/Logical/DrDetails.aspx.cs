using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S5_Prj_DrApt_Dung_Fatsah_v02.Logical
{
    public partial class DrDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select * from Doctor where DId ='" + Session["DId"].ToString() + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();

                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();
                TextBox5.Text = dr[4].ToString();
                TbPassword.Text = dr[5].ToString();
                TbEmail.Text = dr[6].ToString();
                con.Close();
            }
        }
        public string passCheck()
        {
            if (TbPassword.Text != TbComfirmPassword.Text)
            {
                return "wrong";
            }
            return "OK";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "" || TextBox4.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Fill the Details !!!')", true);
            }
            else
            {
                if (passCheck() == "OK" && TbPassword.Text != "")
                {
                    SqlCommand cmd;
                    string t = "update Doctor set Address='" + TextBox3.Text + "',Mobile='" + TextBox4.Text + "',Cate='" + TextBox5.Text + "',Pass='" + TbPassword.Text + "',Email='" + TbEmail.Text + "' where Did='" + TextBox1.Text + "'";
                    con.Open();
                    cmd = new SqlCommand(t, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Details Updated !!!')", true);
                }
            }
        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            // Session.Abandon();
            Response.Redirect("Book.aspx");
        }
    }
}