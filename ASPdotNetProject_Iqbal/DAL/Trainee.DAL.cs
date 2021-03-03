using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ASPdotNetProject_Iqbal.DAL
{
    public class Trainee
    {
        public bool RegisterData(string Name, string Email, string Gender, string DOB)
        {
            ConString.con.Open();
            try
            {
                string query = "Insert Into TraineeInfo Values('" + Name + "','" + Email + "','" + Gender + "','" + DOB + "')";
                SqlCommand cmd = new SqlCommand(query, ConString.con);
                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                ConString.con.Close();
                ConString.con.Dispose();
            }
        }

    }
}