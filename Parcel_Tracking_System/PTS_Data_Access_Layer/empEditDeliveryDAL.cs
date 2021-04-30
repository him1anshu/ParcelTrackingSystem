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
    public class empEditDeliveryDAL
    {
        public void empEditDeliveryDALF(deliveryEntity deliveryEntityObj)
        {
            string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("empEditDelivery", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;

                //cmdObj.Parameters.AddWithValue("@delID", deliveryEntityObj.delID_);
                 cmdObj.Parameters.AddWithValue("@delTrackId", deliveryEntityObj.delTrackId_);
                //cmdObj.Parameters.AddWithValue("@delSourceBranchId", deliveryEntityObj.delSourceBranchId_);
                //cmdObj.Parameters.AddWithValue("@delSourceBranchName", deliveryEntityObj.delSourceBranchName_);
                cmdObj.Parameters.AddWithValue("@delEmpMail", deliveryEntityObj.delEmpMail_);
                cmdObj.Parameters.AddWithValue("@delDateOfDel", deliveryEntityObj.delDateOfDel_);
                cmdObj.Parameters.AddWithValue("@delCurrentBranchId", deliveryEntityObj.delCurrentBranchId_);
                cmdObj.Parameters.AddWithValue("@delNextBranchId", deliveryEntityObj.delNextBranchId_);
                cmdObj.Parameters.AddWithValue("@delDateOfRec", deliveryEntityObj.delDateOfRec_);
                //cmdObj.Parameters.AddWithValue("@delDestnBranchId", deliveryEntityObj.delDestnBranchId_);
                //cmdObj.Parameters.AddWithValue("@delDestnBranchName", deliveryEntityObj.delDestnBranchName_);
                cmdObj.Parameters.AddWithValue("@delExpDateOfDel", deliveryEntityObj.delExpDateOfDel_);
                cmdObj.Parameters.AddWithValue("@delCurrentLocation", deliveryEntityObj.delCurrentLocation_);
                cmdObj.Parameters.AddWithValue("@delStatus", deliveryEntityObj.delStatus_);
                conObj.Open();
                cmdObj.ExecuteNonQuery();

            }
        }
    }
}
