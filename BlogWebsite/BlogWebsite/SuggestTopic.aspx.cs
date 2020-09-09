using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class SuggestTopic : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSuggest_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into SuggestTopic(Title,Contents,Image,SendingPerson,SendingMail) values (@t1,@t2,@t3,@t4,@t5)", sql.Connec());

            cmd.Parameters.AddWithValue("@t1", txtTitle.Text);
            cmd.Parameters.AddWithValue("@t2", txtContent.Text);
            cmd.Parameters.AddWithValue("@t3", fupImage.FileName);
            cmd.Parameters.AddWithValue("@t4", txtSenderName.Text);
            cmd.Parameters.AddWithValue("@t5", txtSenderMail.Text);

            cmd.ExecuteNonQuery();
            sql.Connec().Close();

            Response.Write("Your suggestion has been received");

        }
    }
}