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
    public partial class ViewUser : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Select UId from Cust where UId='" + TextBox1.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                con.Close();
                string s = "SELECT UId,Name,Address,Mobile,Email,Sex,Age, Bg FROM Cust where UId='" + TextBox1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();


                s = "SELECT * FROM History where UId='" + TextBox1.Text + "'";
                da = new SqlDataAdapter(s, con);
                ds = new DataSet();
                da.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
                Panel4.Visible = true;

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('This Name is not Registered');", true);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

    }
}