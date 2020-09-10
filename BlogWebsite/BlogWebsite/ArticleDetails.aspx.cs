using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class ArticleDetails : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string articleid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            articleid = Request.QueryString["ID"];

            SqlCommand cmd = new SqlCommand("Select Title From Articles where ID=@id", sql.Connec());
            cmd.Parameters.AddWithValue("@id", articleid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            sql.Connec().Close();

            //Comment of articles list
            SqlCommand cmd1 = new SqlCommand("Select * From Comments where ArticleID=@id1", sql.Connec());
            cmd1.Parameters.AddWithValue("@id1", articleid);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
        }

        protected void btnComment_Click(object sender, EventArgs e)
        {
            SqlCommand cmd= new SqlCommand("Insert into Comments (NameSurname,Email,CommentContent,ArticleID) values (@p1,@p2,@p3,@p4)", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p4", articleid);
            cmd.ExecuteNonQuery();
            sql.Connec().Close();

        }
    }
}