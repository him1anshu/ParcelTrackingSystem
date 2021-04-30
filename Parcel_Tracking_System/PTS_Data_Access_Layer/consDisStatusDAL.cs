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
    public class consDisStatusDAL
    {

        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public void consDisStatusDALF(consignmentEntity consignmentEntityObj,string trackId)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("consDisStatus", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@consTrackId", trackId);
                cmdObj.Parameters.AddWithValue("@consDisStatus", consignmentEntityObj.consDisStatus_);

                conObj.Open();
                cmdObj.ExecuteNonQuery();

            }
        }

    }
}
