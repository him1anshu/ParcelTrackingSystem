using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using PTS_Business_Entity;

namespace PTS_Data_Access_Layer
{
    public class addReceiverDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;
        public void addReceiverDALF(receiverEntity receiverEntityObj)
        {
            using(SqlConnection conObj=new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("addReceiver",conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;

                cmdObj.Parameters.AddWithValue("@recTrackId", receiverEntityObj.recTrackId_);
                cmdObj.Parameters.AddWithValue("@recReceiverName", receiverEntityObj.recReceiverName_);
                cmdObj.Parameters.AddWithValue("@recReceiverPhone", receiverEntityObj.recReceiverPhone_);
                cmdObj.Parameters.AddWithValue("@recSourceBranchId", receiverEntityObj.recSourceBranchId_);
                cmdObj.Parameters.AddWithValue("@recDestBranchId", receiverEntityObj.recDestBranchId_);
                cmdObj.Parameters.AddWithValue("@recMaterialDesc", receiverEntityObj.recMaterialDesc_);
                cmdObj.Parameters.AddWithValue("@recTotalItems", receiverEntityObj.recTotalItems_);
                cmdObj.Parameters.AddWithValue("@recDateOfRec", receiverEntityObj.recDateOfRec_);
                cmdObj.Parameters.AddWithValue("@recStatus", receiverEntityObj.recStatus_);

                conObj.Open();
                cmdObj.ExecuteNonQuery();
                
            }
        }
    }
}
