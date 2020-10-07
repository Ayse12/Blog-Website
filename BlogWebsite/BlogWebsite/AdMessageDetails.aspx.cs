using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class AdMessageDetails : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MessageID"];
            SqlCommand cmd = new SqlCommand("Select * From Message where MessageID=@p1", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtNameSur.Text = dr[4].ToString();
                txtEmail.Text = dr[2].ToString();
                txtTpc.Text = dr[1].ToString();
                txtContent.Text = dr[3].ToString();
            }
            sql.Connec().Close();
        }
    }
}