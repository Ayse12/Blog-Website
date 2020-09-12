using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace BlogWebsite
{
    public partial class AdArticles : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string process = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["ID"];
                process = Request.QueryString["process"];

                //Category List (DropDownList)
                SqlCommand cmd1 = new SqlCommand("Select * From Category", sql.Connec());
                SqlDataReader dr1 = cmd1.ExecuteReader();
                dlisCategory.DataTextField = "CategoryName";
                dlisCategory.DataValueField = "CategoryID";

                dlisCategory.DataSource = dr1;
                dlisCategory.DataBind();
            }

            //Article List
            SqlCommand cmd = new SqlCommand("Select * From Articles", sql.Connec());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            if (process== "delete")
            {
                SqlCommand cmd2 = new SqlCommand("Delete From Articles where ID=@id1", sql.Connec());
                cmd2.Parameters.AddWithValue("@id1", id);
                cmd2.ExecuteNonQuery();
                sql.Connec().Close();

                // Decrease  the amount category  
                SqlCommand cmd3 = new SqlCommand("Update Category set CategoryAmount=CategoryAmount-1 where CategoryID=@id1", sql.Connec());
                cmd3.Parameters.AddWithValue("@id1", dlisCategory.SelectedValue);
                cmd3.ExecuteNonQuery();
                sql.Connec().Close();
            }
            pnl2.Visible = false;
            pnl4.Visible = false;
            Panel1.Visible = true;
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            pnl2.Visible = false;
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            pnl2.Visible = true;
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            pnl4.Visible = false;
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            pnl4.Visible = true;
        }

        protected void btnAdded_Click(object sender, EventArgs e)
        {
            //ADD Articles
            SqlCommand cmd = new SqlCommand("Insert Into Articles (Title,Contents,Image,Points,CategoryID) values (@p1,@p2,@p3,@p4,@p5)", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", txtTitle.Text);
            cmd.Parameters.AddWithValue("@p2", txtContent.Text);
            cmd.Parameters.AddWithValue("@p3", fluImg.FileName);
            cmd.Parameters.AddWithValue("@p4", txtPoint.Text);
            cmd.Parameters.AddWithValue("@p5", dlisCategory.SelectedValue);
            cmd.ExecuteNonQuery();
            sql.Connec().Close();

            // Increasing the amount category  
            SqlCommand cmd1 = new SqlCommand("Update Category set CategoryAmount=CategoryAmount+1 where CategoryID=@id1", sql.Connec());
            cmd1.Parameters.AddWithValue("@id1", dlisCategory.SelectedValue);
            cmd1.ExecuteNonQuery();
            sql.Connec().Close();

        }
    }
}