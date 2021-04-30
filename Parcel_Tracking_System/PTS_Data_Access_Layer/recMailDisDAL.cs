using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using PTS_Business_Entity;

namespace PTS_Data_Access_Layer
{
    public class recMailDisDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public string recMailDisDALF(string trackId)
        {
            string recMail = string.Empty;

            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("recMailDis", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@trackId",trackId);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                         recMail= reader[0].ToString();
                       
                    }
                }
            }

            return recMail;

        }

    }
}
