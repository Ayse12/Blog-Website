using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class AdComment : System.Web.UI.Page
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

                //Confirmed Comments
                SqlCommand cmd = new SqlCommand("Select * From Comments where Confirmation=1", sql.Connec());
                SqlDataReader dr = cmd.ExecuteReader();
                DataList3.DataSource = dr;
                DataList3.DataBind();

                //Not Confirmed Comments
                SqlCommand cmd1 = new SqlCommand("Select * From Comments where Confirmation=0", sql.Connec());
                SqlDataReader dr1 = cmd1.ExecuteReader();
                DataList1.DataSource = dr1;
                DataList1.DataBind();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;

        }


    }
}