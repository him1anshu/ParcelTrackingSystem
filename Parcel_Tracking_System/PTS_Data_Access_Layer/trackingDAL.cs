using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace PTS_Data_Access_Layer
{
    public class trackingDAL
    {

        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public int trackingCountConsDALF(string trackId)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("trackingCountCons", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@consTrackId", trackId);
                conObj.Open();
                int trckCount = Convert.ToInt32(cmdObj.ExecuteScalar());
                return trckCount;
            }
        }

        public int trackingCountDALF(string trackId)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("trackingCount", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@delTrackId", trackId);
                conObj.Open();
                int trckCount = Convert.ToInt32(cmdObj.ExecuteScalar());
                return trckCount;
            }
        }

        public string trackingDALF(string trackId )
        {
            string currentLoc = string.Empty;

            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("trackingStr", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@delTrackId",trackId);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        currentLoc = reader[0].ToString();
                    }
                }
            }
            return currentLoc;

        }

    }
}
