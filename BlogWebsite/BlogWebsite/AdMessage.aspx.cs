using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class AdMessage : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlCommand cmd1 = new SqlCommand("Select * From Message", sql.Connec());
            SqlDataReader dr1 = cmd1.ExecuteReader();
            DataList1.DataSource = dr1;
            DataList1.DataBind();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}