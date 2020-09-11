using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public partial class Contact : System.Web.UI.Page
    {
        _1_SqlCon sql = new _1_SqlCon();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert Into Message (NameSurname,Title,Email,Contents) values (@t1,@t2,@t3,@t4)", sql.Connec());

            cmd.Parameters.AddWithValue("@t1", txtNameSur.Text);
            cmd.Parameters.AddWithValue("@t2", txtTpc.Text);
            cmd.Parameters.AddWithValue("@t3", txtEmail.Text);
            cmd.Parameters.AddWithValue("@t4", txtContent.Text);

            cmd.ExecuteNonQuery();
            sql.Connec().Close();
        }
    }
}