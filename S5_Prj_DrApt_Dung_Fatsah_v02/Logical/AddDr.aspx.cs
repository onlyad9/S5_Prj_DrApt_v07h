using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S5_Prj_DrApt_Dung_Fatsah_v02.Logical
{
    public partial class AddDr : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd;
            string com = "select top 1 DId From Doctor ORDER BY DId Desc;";
            con.Open();
            cmd = new SqlCommand(com, con);
            object count = cmd.ExecuteScalar();
            //SqlCommand cmd2;
            //string com2 = "select top 1 CId From Cate ORDER BY CId Desc;";
            //cmd2 = new SqlCommand(com2, con);
            
            //object count2 = cmd2.ExecuteScalar();
            if (count != null )
            {
                int i = Convert.ToInt32(count);
                i++;
                TextBox1.Text = i.ToString();

                DropDownList1.DataSource = "Cate";
                
            }
            else
            {
                TextBox1.Text = "1110";
            }
            con.Close();
        }


        public string check()
        {
            if (TextBox2.Text == "")
            {
                return "Name";
            }
            else if (TextBox3.Text == "")
            {
                return "Address";
            }
            else if (TextBox4.Text == "")
            {
                return "Mobile No";
            }
            else if (TbEmail.Text == "")
            {
                return "Email";
            }
            else if (DropDownList1.Text == "--Select--")
            {
                return "Category";
            }
            else
            {
                return "OK";
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (check() == "OK")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Doctor(DId,Name,Address,Mobile,Cate,Pass,Email) values (@DId,@Name,@Address,@Mobile,@Cate,@Pass,@Email);", con);
                cmd.Parameters.AddWithValue("@DId", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Mobile", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Cate", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Pass", TbPassword.Text);
                cmd.Parameters.AddWithValue("@Email", TbEmail.Text);
                cmd.ExecuteReader();
                con.Close();
                con.Open();

                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Doctor Registered');", true);
                Page_Load(sender, e);
                //TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TbEmail.Text = "";
                TbPassword.Text = "";
                DropDownList1.SelectedIndex = 0;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + check() + "');", true);
            }
        }
        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            // Session.Abandon();
            Response.Redirect("~/Logical/ViewC.aspx");
        }
        private void LoadDropDownList()
        {

            DropDownList1.Items.Clear();
            string selectSQL = "SELECT CId,Cate FROM dbo.Cate";

            //SqlConnection con = new SqlConnection(con);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;

            try
            {
                ListItem newItem = new ListItem();
                newItem.Text = "<Select Subject>";
                newItem.Value = "0";
                DropDownList1.Items.Add(newItem);

                con.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    newItem = new ListItem();
                    newItem.Text = reader["Cate"].ToString();
                    newItem.Value = reader["CID"].ToString();
                    DropDownList1.Items.Add(newItem);
                }
                reader.Close();
            }
            catch (Exception err)
            {
                //TODO
            }
            finally
            {
                con.Close();
            }

        }
    }
}