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
    public class addConsignmentDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public void addConsignmentDALF(consignmentEntity consignmentEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("addConsignments", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;

                cmdObj.Parameters.AddWithValue("@consId", consignmentEntityObj.consId_);
                cmdObj.Parameters.AddWithValue("@consTrackId", consignmentEntityObj.consTrackId_);
                cmdObj.Parameters.AddWithValue("@consShipperName", consignmentEntityObj.consShipperName_);
                cmdObj.Parameters.AddWithValue("@consShipperMobile", consignmentEntityObj.consShipperMobile_);
                cmdObj.Parameters.AddWithValue("@consShipperMail", consignmentEntityObj.consShipperMail_);
                cmdObj.Parameters.AddWithValue("@consShipperAddress", consignmentEntityObj.consShipperAddress_);
                cmdObj.Parameters.AddWithValue("@consMaterialDescription", consignmentEntityObj.consMaterialDescription_);
                cmdObj.Parameters.AddWithValue("@consTotalItems", consignmentEntityObj.consTotalItems_);
                cmdObj.Parameters.AddWithValue("@consTotalWeight", consignmentEntityObj.consTotalWeight_);
                cmdObj.Parameters.AddWithValue("@consTotalDistance", consignmentEntityObj.consTotalDistance_);
                cmdObj.Parameters.AddWithValue("@consServiceType", consignmentEntityObj.consServiceType_);
                cmdObj.Parameters.AddWithValue("@consShippingCharge", consignmentEntityObj.consShippingCharge_);
                cmdObj.Parameters.AddWithValue("@consDateOfBooking", consignmentEntityObj.consDateOfBooking_);
                cmdObj.Parameters.AddWithValue("@consSrcBranchId", consignmentEntityObj.consSrcBranchId_);
                cmdObj.Parameters.AddWithValue("@consSrcBranchName", consignmentEntityObj.consSrcBranchName_);
                cmdObj.Parameters.AddWithValue("@consSrcBranchCity", consignmentEntityObj.consSrcBranchCity_);
                cmdObj.Parameters.AddWithValue("@consDestBranchId", consignmentEntityObj.consDestBranchId_);
                cmdObj.Parameters.AddWithValue("@consDestBranchName", consignmentEntityObj.consDestBranchName_);
                cmdObj.Parameters.AddWithValue("@consDestBranchCity", consignmentEntityObj.consDestBranchCity_);
                cmdObj.Parameters.AddWithValue("@consReceiverName", consignmentEntityObj.consReceiverName_);
                cmdObj.Parameters.AddWithValue("@consReceiverMobile", consignmentEntityObj.consReceiverMobile_);
                cmdObj.Parameters.AddWithValue("@consReceiverMail", consignmentEntityObj.consReceiverMail_);
                cmdObj.Parameters.AddWithValue("@consReceiverAddress", consignmentEntityObj.consReceiverAddress_);
                cmdObj.Parameters.AddWithValue("@consBookedBy", consignmentEntityObj.consBookedBy_);

                conObj.Open();
                cmdObj.ExecuteNonQuery();

            }
        }
        public DataSet addServicesEmpDALF()
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
               
                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("addServicesEmp", conObj);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;
          
            }
        }

        public DataSet addBranchConsEmpDALF()
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("addBranchConsEmp", conObj);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;

            }
        }

        public string consCityDALF(cityEntity cityEntityObj, out string srcBrLong)
        {
            string srcBrLat = string.Empty;
            string srcLong  = string.Empty;
            
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("cityDist", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@cityName",cityEntityObj.cityName_);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        srcBrLat = reader[0].ToString();
                        srcLong= reader[1].ToString();
                    }
                }
            }

            srcBrLong = srcLong;
            return srcBrLat;

        }

        public string consCityDALF1(cityEntity cityEntityObj, out string destBrLong)
        {
            string destBrLat = string.Empty;
            string  destLong= string.Empty;

            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("CityDist", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@cityName", cityEntityObj.cityName_);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        destBrLat = reader[0].ToString();
                        destLong = reader[1].ToString();
                    }
                }
            }

            destBrLong = destLong;
            return destBrLat;

        }

        public string consServiceCostDALF(servicesEntity servicesEntityObj, out string costAccDist)
        {
            string costAccWeight = string.Empty;
            string costDistServ = string.Empty;

            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("consServiceCost", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@serviceType", servicesEntityObj.serviceType_);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        costAccWeight = reader[0].ToString();
                        costDistServ = reader[1].ToString();
                    }
                }
            }

            costAccDist = costDistServ;
            return costAccWeight;

        }

        public string consShrMailDALF(consignmentEntity consignmentEntityObj,out string trckId)
        {
            string shrMail=string.Empty;
            string trckkId=string.Empty;

            using (SqlConnection conObj = new SqlConnection(CS))
            {
                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("consShrMail",conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@consId",consignmentEntityObj.consId_);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        shrMail = reader[0].ToString();
                        trckkId = reader[1].ToString();
                       
                    }
                }

            }
          
            trckId = trckkId;
            return shrMail;
        }

         public string addBrConsEmpDALF(string branchId, out string branchCity)
        {
            string branchName = string.Empty;
            string  brCity= string.Empty;

            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("addBrConsEmp", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@brBranchId",branchId);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        branchName = reader[0].ToString();
                        brCity = reader[1].ToString();
                    }
                }
            }
            branchCity = brCity;
            return branchName;
        }
    }
}