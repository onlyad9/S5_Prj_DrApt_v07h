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
    public partial class DrDesc : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "SELECT UId,Name,Address,Mobile,Email,Sex,Age, Bg FROM Cust ORDER BY UId Asc";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select Name from Cust where UId='" + TextBox1.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Panel4.Visible = true;
                dr.Read();
                TbPatientName.Text = dr[0].ToString();
                con.Close();
            }
            else
            {
                con.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Invalid User ID');", true);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert Into History (UId,Dise,Treatment,DNote,DateTime) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DateTime.Now.ToShortDateString() + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Patient History Updated');", true);
            // Response.Redirect("~/Logical/DrDesc.aspx");
            EmptyField();
        }
        public void EmptyField()
        {
            //TbPatientName.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}