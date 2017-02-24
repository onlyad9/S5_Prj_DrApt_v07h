using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S5_Prj_DrApt_Dung_Fatsah_v02.Logical
{
    public partial class ViewCDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select * from Cust where UId='" + Session["id"].ToString() + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();
                TextBox5.Text = dr[4].ToString();
                DropDownList1.DataValueField = dr[5].ToString();
                TextBox8.Text = dr[6].ToString();
                DropDownList2.DataValueField = dr[7].ToString();
                TbPassword.Text = dr[8].ToString();

                con.Close();

                string s = "SELECT * FROM History where UId='" + TextBox1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

        }
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

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
            if (TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Fill The Details !!!')", true);
            }
            else
            {
                if (passCheck() == "OK" && TbPassword.Text != "")
                {
                    string add, contact, email;
                    add = TextBox3.Text;
                    contact = TextBox4.Text;
                    email = TextBox5.Text;
                    SqlCommand cmd;
                    string s = "update Cust set Address='" + add + "',Mobile='" + contact + "',Email='" + email + "',Sex='" + DropDownList1.Text + "',Age='" + TextBox8.Text + "',Pass='" + TbPassword.Text + "',Bg='" + DropDownList2.Text + "' where UId='" + TextBox1.Text + "'";
                    con.Open();
                    cmd = new SqlCommand(s, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Personal Details Updated !!!!')", true);
                }
            }
        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            // Session.Abandon();
            Response.Redirect("~/Logical/Book.aspx");
        }

    }
}