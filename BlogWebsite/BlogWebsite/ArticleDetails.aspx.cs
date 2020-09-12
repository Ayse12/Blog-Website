using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class ArticleDetails1 : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            string image = fluImg.FileName;
            id = Request.QueryString["ID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * From Articles where ID=@id1", sql.Connec());
                cmd.Parameters.AddWithValue("@id1", id);
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    txtTitle.Text = dr[1].ToString();
                    txtContent.Text = dr[2].ToString();
                    image = dr[3].ToString();
                    txtPoint.Text = dr[5].ToString();
                    

                }
                sql.Connec().Close();
            }
            if (Page.IsPostBack == false)
            {
                //Category List (DropDownList)
                SqlCommand cmd1 = new SqlCommand("Select * From Category", sql.Connec());
                SqlDataReader dr1 = cmd1.ExecuteReader();
                dlisCategory.DataTextField = "CategoryName";
                dlisCategory.DataValueField = "CategoryID";

                dlisCategory.DataSource = dr1;
                dlisCategory.DataBind();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update Articles set Title=@p1 , Contents=@p2, Image=@p3, Points=@p4,CategoryID=@id1 where ID=@id2", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", txtTitle.Text);
            cmd.Parameters.AddWithValue("@p2", txtContent.Text);
            cmd.Parameters.AddWithValue("@p3", fluImg.FileName);
            cmd.Parameters.AddWithValue("@p4", txtPoint.Text);
            cmd.Parameters.AddWithValue("@id1", dlisCategory.SelectedValue);
            cmd.Parameters.AddWithValue("@id2", id);
            cmd.ExecuteNonQuery();
            sql.Connec().Close();
        }
    }
}