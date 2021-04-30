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
    public class locationFinderDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;
        public int locationFinderDALF(branchEntity branchEntityObj)
        {
            using(SqlConnection conObj=new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("locationFinder",conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@brBranchCity", branchEntityObj.brBranchCity_);
                conObj.Open();
                int locResDAL=Convert.ToInt32(cmdObj.ExecuteScalar());
                return locResDAL;
            }
        }

        public DataSet locFinderDALF(branchEntity branchEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("locationFinderRes", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@brBranchCity", branchEntityObj.brBranchCity_);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;

            }
        }

        public int locationFinderDALF1(branchEntity branchEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("locationFinder1", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@brBranchCity", branchEntityObj.brBranchCity_);
                cmdObj.Parameters.AddWithValue("@brBranchLocation", branchEntityObj.brBranchLocation_);
                cmdObj.Parameters.AddWithValue("@brBranchPincode", branchEntityObj.brBranchPincode_);

                conObj.Open();
                int locResDAL1 = Convert.ToInt32(cmdObj.ExecuteScalar());
                return locResDAL1;
            }
        }

        public DataSet locFinderDALF1(branchEntity branchEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("locationFinderRes1", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@brBranchCity", branchEntityObj.brBranchCity_);
                cmdObj.Parameters.AddWithValue("@brBranchLocation", branchEntityObj.brBranchLocation_);
                cmdObj.Parameters.AddWithValue("@brBranchPincode", branchEntityObj.brBranchPincode_);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;

            }
        }
    }
}
