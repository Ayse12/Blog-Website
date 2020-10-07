using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class AdAbout : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * From About", sql.Connec());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                sql.Connec().Close();
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update About set AboutMe=@p1", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.ExecuteNonQuery();
            sql.Connec().Close();

        }
    }
}