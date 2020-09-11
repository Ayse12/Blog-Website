using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class AdCategoryDetails : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["CategoryID"];
            if (Page.IsPostBack == false)
            {


                SqlCommand cmd = new SqlCommand("Select * From Category where CategoryID=@id1", sql.Connec());
                cmd.Parameters.AddWithValue("@id1", id);
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                sql.Connec().Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update Category set CategoryName=@p1, CategoryAmount=@p2 where CategoryID=@id1", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@id1", id);
            cmd.ExecuteNonQuery();
            sql.Connec().Close();
        }
    }
}