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
    public partial class DataCRUD : System.Web.UI.Page
    {
        private string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bind();
            }
        }
        private void bind()
        {
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select id,name,price,color,productor from product";
                SqlDataReader dr = cmd.ExecuteReader();
                EditProduct.DataSource = dr;
                EditProduct.DataBind();
                dr.Close();
                cmd.Dispose();
            }
        }

        protected void EditProduct_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = EditProduct.Rows[e.RowIndex];
            string id = row.Cells[1].Text;
            string price = ((TextBox)row.Cells[3].Controls[0]).Text;
            string name = ((TextBox)row.Cells[2].Controls[0]).Text;
            string productor = ((TextBox)row.Cells[4].Controls[0]).Text;
            string color = ((TextBox)row.Cells[5].Controls[0]).Text;
            updateproduct(id, name, price, productor, color);

        }
        private void updateproduct(string id, string name, string price, string productor, string color)
        {
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = @"update product set price = @price,name = @name,productor=@productor,color=@color where id=@id";
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@color", color);
                cmd.Parameters.AddWithValue("@productor", productor);
                cmd.ExecuteNonQuery();
                cmd.CommandText = @"select id,price,name,color,productor from product";
                cmd.Parameters.Clear();
                SqlDataReader dr = cmd.ExecuteReader();
                EditProduct.DataSource = dr;
                EditProduct.EditIndex = -1;
                EditProduct.DataBind();
                dr.Close();
                cmd.Dispose();
            }
        }

        protected void EditProduct_RowEditing(object sender, GridViewEditEventArgs e)
        {
            EditProduct.EditIndex = e.NewEditIndex;
            bind();
        }

        protected void EditProduct_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            EditProduct.EditIndex = -1;
            bind();
        }

        protected void EditProduct_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            using (SqlCommand cmd = conn.CreateCommand())
            {
                cmd.CommandText = "insert into product values(@id,@color,@price,@productor,@name)";
                SqlParameter[] pms = new SqlParameter[5];
                pms[0] = new SqlParameter("@id", TextBox1.Text);
                pms[1] = new SqlParameter("@color", TextBox2.Text);
                pms[2] = new SqlParameter("@price", TextBox3.Text);
                pms[3] = new SqlParameter("@productor", TextBox4.Text);
                pms[4] = new SqlParameter("@name", TextBox5.Text);
                cmd.Parameters.AddRange(pms);
                int row = cmd.ExecuteNonQuery();
                if(row==1)
                {
Response.Write("<script>alert('添加成功');window.location='Home.aspx';</script>");
                    bind();               }
                    
            }
           
        }
    }
}