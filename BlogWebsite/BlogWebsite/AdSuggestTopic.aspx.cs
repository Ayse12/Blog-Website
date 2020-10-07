using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class AdSuggestTopic : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Not Suggestion Topic
            SqlCommand cmd = new SqlCommand("Select * From SuggestTopic where Status=0", sql.Connec());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Suggestion Topic
            SqlCommand cmd1 = new SqlCommand("Select * From SuggestTopic where Status=1", sql.Connec());
            SqlDataReader dr1 = cmd1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}