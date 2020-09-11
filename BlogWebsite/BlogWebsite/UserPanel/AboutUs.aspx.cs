using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace BlogWebsite
{
    public partial class AboutUs : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From About", sql.Connec());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}