using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace BlogWebsite.App_Code
{
    public class SqlConnections
    {
        public SqlConnection Connection()
        {
            SqlConnection conString = new SqlConnection (@"Server=DESKTOP-B3G39MA\\SQLEXPRESS02;database=MyBlog;Trusted_Connection=true");
            conString.Open();
            return conString;
        }
    }
}