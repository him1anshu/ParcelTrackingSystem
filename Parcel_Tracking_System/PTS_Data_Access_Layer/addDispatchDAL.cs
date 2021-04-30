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
    public class addDispatchDAL
    {

        public void addDispatchDALF(dispatchEntity dispatchEntityObj)
        {
            string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("addDispatch",conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;

                //cmdObj.Parameters.AddWithValue("@disId", dispatchEntityObj.disId_);
                cmdObj.Parameters.AddWithValue("@disTrackId", dispatchEntityObj.disTrackId_);
                cmdObj.Parameters.AddWithValue("@disEmpId", dispatchEntityObj.disEmpId_);
                cmdObj.Parameters.AddWithValue("@disEmpName", dispatchEntityObj.disEmpName_);
                cmdObj.Parameters.AddWithValue("@disEmpMobile", dispatchEntityObj.disEmpMobile_);
                cmdObj.Parameters.AddWithValue("@disBranchId", dispatchEntityObj.disBranchId_);
                cmdObj.Parameters.AddWithValue("@disBranchName", dispatchEntityObj.disBranchName_);
                cmdObj.Parameters.AddWithValue("@disShipperName", dispatchEntityObj.disShipperName_);
                cmdObj.Parameters.AddWithValue("@disShipperPhone", dispatchEntityObj.disShipperPhone_);
                cmdObj.Parameters.AddWithValue("@disShipperMail", dispatchEntityObj.disShipperMail_);
                cmdObj.Parameters.AddWithValue("@disShipperAddress", dispatchEntityObj.disShipperAddress_);
                cmdObj.Parameters.AddWithValue("@disReceiverName", dispatchEntityObj.disReceiverName_);
                cmdObj.Parameters.AddWithValue("@disReceiverPhone", dispatchEntityObj.disReceiverPhone_);
                cmdObj.Parameters.AddWithValue("@disReceiverMail", dispatchEntityObj.disReceiverMail_);
                cmdObj.Parameters.AddWithValue("@disReceiverAddress", dispatchEntityObj.disReceiverAddress_);
                cmdObj.Parameters.AddWithValue("@disDateOfDis", dispatchEntityObj.disDateOfDis_);
                cmdObj.Parameters.AddWithValue("@disBookedBy",dispatchEntityObj.disBookedBy_);
                cmdObj.Parameters.AddWithValue("@disStatus", dispatchEntityObj.disStatus_);
                conObj.Open();
                cmdObj.ExecuteNonQuery();             
            }
        }

    }
}
