using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class AdCommentDetails : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ID"];
            if (Page.IsPostBack == false)
            {

                SqlCommand cmd = new SqlCommand("Select NameSurname,Email,CommentContent,Title From Comments inner join Articles on Articles.ID=Comments.ArticleID where Comments.ID=@id", sql.Connec());
                cmd.Parameters.AddWithValue("@id", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox4.Text = dr[2].ToString();
                    TextBox5.Text = dr[3].ToString();
                }
                sql.Connec().Close();
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update Comments set CommentContent=@p1, Confirmation=@p2 where ID=@p3", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", TextBox4.Text);
            cmd.Parameters.AddWithValue("@p2", "True");
            cmd.Parameters.AddWithValue("@p3", id);
            cmd.ExecuteNonQuery();
            sql.Connec().Close();


        }
    }
}