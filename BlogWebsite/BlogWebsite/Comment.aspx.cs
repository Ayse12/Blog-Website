using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class Comment : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            if (Page.IsPostBack == false)
            {
                //Confirmed Comments
                SqlCommand cmd = new SqlCommand("Select * From Comments where Confirmation=1", sql.Connec());
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();

                //Not Confirmed Comments
                SqlCommand cmd1 = new SqlCommand("Select * From Comments where Confirmation=0", sql.Connec());
                SqlDataReader dr1 = cmd1.ExecuteReader();
                DataList2.DataSource = dr1;
                DataList2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }
    }
}