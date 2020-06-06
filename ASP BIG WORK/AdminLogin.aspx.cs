using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Threading;
namespace ASP_BIG_WORK
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        private string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connstr);
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from AdminTable where adminname = @adminname and adminpwd = @adminpwd", conn);
                cmd.Parameters.Add("@adminname", SqlDbType.VarChar);
                cmd.Parameters.Add("@adminpwd", SqlDbType.Int);
                cmd.Parameters[0].Value = adminname.Text;
                cmd.Parameters[1].Value = adminpwd.Text;
                int count = (int)cmd.ExecuteScalar();
                if (count >= 0)
                {
                    Response.Write("<script>alert('管理员登录成功');window.location='Data.aspx';</script>");
                }


            }
        }
    }
}