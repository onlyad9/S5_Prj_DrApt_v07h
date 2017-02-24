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
    public partial class ViewDr : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection(@"Data Source=WIN7MSDN;Initial Catalog=DoctorApp;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
                    

        SqlDataAdapter da = new SqlDataAdapter("Select DId,Name,Address,Mobile,Cate, Email from Doctor ORDER BY DId Asc", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        }
    }
}