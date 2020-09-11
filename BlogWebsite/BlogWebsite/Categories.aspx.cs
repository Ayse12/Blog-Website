using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class Categories : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string id = "";
        string process = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["CategoryID"];
                process = Request.QueryString["process"];
            }
            SqlCommand cmd = new SqlCommand("Select * From Category", sql.Connec());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Delete Process
            if (process== "delete")
            {
                SqlCommand cmd1 = new SqlCommand("Delete From Category where CategoryID=@id", sql.Connec());
                cmd1.Parameters.AddWithValue("@id", id);
                cmd1.ExecuteNonQuery();
                sql.Connec().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert Into Category (CategoryName) values (@p1)", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.ExecuteNonQuery();
            sql.Connec().Close();
        }
    }
}