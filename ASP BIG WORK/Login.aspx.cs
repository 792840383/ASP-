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
    public partial class Login : System.Web.UI.Page
    {
        private bool UserNameIselgal = false;
        private bool PsdIselgal = false;
        private bool CanRegister = false;
        private string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connstr);
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from UserTable", conn);
                int count = (int)cmd.ExecuteScalar();
                if (count >= 10)
                {

                    Response.Write("<script>alert('呜呜呜数据库撑了')</script>");
                }
                else
                {

                    CanRegister = true;
                }
            }
            if (CanRegister)
            {
                try
                {
                        using (SqlCommand cmd = conn.CreateCommand())
                        {
                            cmd.CommandText = "insert into UserTable values(@name,@pwd)";
                            SqlParameter[] pms = new SqlParameter[2];
                            pms[0] = new SqlParameter("@name", txtname.Text);
                            pms[1] = new SqlParameter("@pwd", txtpwd.Text);
                            cmd.Parameters.AddRange(pms);
                            int row = cmd.ExecuteNonQuery();
                        if (row==1)
                        {

                           Response.Write("<script>alert('注册成功');window.location='Home.aspx';</script>");

                        }
                    }
                }
                catch
                {
                    Response.Write("注册异常");
                }
                finally
                {
                    conn.Close();

                }
            }
         }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connstr);
            { 
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from UserTable where Username = @Username and Password = @Password", conn);
                cmd.Parameters.Add("@Username",SqlDbType.VarChar);
                cmd.Parameters.Add("@Password", SqlDbType.Int);
                cmd.Parameters[0].Value = txtname.Text;
                cmd.Parameters[1].Value = txtpwd.Text;
                int count =(int) cmd.ExecuteScalar();
                if(count>=0)
                {
                    Response.Write("<script>alert('登录成功');window.location='Home.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误');window.location='Login.aspx';</script>");
                }
               
            }
        }
    }
}