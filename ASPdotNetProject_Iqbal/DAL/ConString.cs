using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace ASPdotNetProject_Iqbal.DAL
{
    public class ConString
    {
        public static SqlConnection con;

        static ConString()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString);
        }
    }
}