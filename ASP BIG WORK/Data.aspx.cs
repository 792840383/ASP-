using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace ASP_BIG_WORK
{
    public partial class Data : System.Web.UI.Page
    {
        private string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection(connstr);
            //SqlCommand cmd = new SqlCommand();
            //cmd.Connection = conn;
            //cmd.CommandText = "select * from product";
            //try
            //{
            //    conn.Open();
            //    SqlDataReader dr = cmd.ExecuteReader();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
            //    GridView1.DataSource = dr;
            //    GridView1.DataBind();
            //    dr.Close();
            //}
            //catch { }
            //finally
            //{
            //    conn.Close();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("DataCRUD.aspx");
        }
    }
}