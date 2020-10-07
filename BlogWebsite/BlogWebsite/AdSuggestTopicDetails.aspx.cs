using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class AdSuggestTopicDetails : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["SuggestID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * From SuggestTopic where SuggestID=@id", sql.Connec());
                cmd.Parameters.AddWithValue("@id", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtTitle.Text = dr[1].ToString();
                    txtContent.Text = dr[2].ToString();
                    txtPerson.Text = dr[4].ToString();
                    txtMail.Text = dr[5].ToString();
                }
                sql.Connec().Close();

                //Category List (DropDownList)
                SqlCommand cmd1 = new SqlCommand("Select * From Category", sql.Connec());
                SqlDataReader dr1 = cmd1.ExecuteReader();
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";

                DropDownList1.DataSource = dr1;
                DropDownList1.DataBind();
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //Update Status
            SqlCommand cmd = new SqlCommand("Update SuggestTopic set Status=1 where SuggestID=@id", sql.Connec());
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            sql.Connec().Close();

            //Add of home page (Suggest Topic)
            SqlCommand cmd1 = new SqlCommand("Insert into Articles (Title,Contents,CategoryID) values (@p1,@p2,@p3)", sql.Connec());
            cmd1.Parameters.AddWithValue("@p1", txtTitle.Text);
            cmd1.Parameters.AddWithValue("@p2", txtContent.Text);
            cmd1.Parameters.AddWithValue("@p3", DropDownList1.SelectedValue);
            cmd1.ExecuteNonQuery();
            sql.Connec().Close();
        }
    }
}