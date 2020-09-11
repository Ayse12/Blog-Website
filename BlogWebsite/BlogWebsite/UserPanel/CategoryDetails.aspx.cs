using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class CategoryDetails : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string categoryId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            categoryId = Request.QueryString["CategoryID"];
            SqlCommand cmd = new SqlCommand("Select* From Articles where CategoryID = @p1", sql.Connec());
            cmd.Parameters.AddWithValue("@p1", categoryId);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}