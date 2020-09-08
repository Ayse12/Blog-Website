using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace BlogWebsite
{
    public class _1_SqlCon
    {
        public SqlConnection Connec()
        {
            SqlConnection conString = new SqlConnection("Server=DESKTOP-B3G39MA\\SQLEXPRESS02;database=MyBlog;Trusted_Connection=true");
            conString.Open();
            return conString;
        }
    }
}