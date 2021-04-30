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
    public class managerRegistrationDAL
    {
        String CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public void managerRegDAL(userEntity userEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                SqlCommand cmdObj = new SqlCommand("managerRegistration", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;

                cmdObj.Parameters.Clear();
                cmdObj.Parameters.AddWithValue("@usrId", userEntityObj.usrId_);
                cmdObj.Parameters.AddWithValue("@usrName", userEntityObj.usrName_);
                cmdObj.Parameters.AddWithValue("@usrPassword", userEntityObj.usrPassword_);
                cmdObj.Parameters.AddWithValue("@usrEmail", userEntityObj.usrEmail_);
                cmdObj.Parameters.AddWithValue("@usrMobile", userEntityObj.usrMobile_);
                cmdObj.Parameters.AddWithValue("@usrAddress", userEntityObj.usrAddress_);
                cmdObj.Parameters.AddWithValue("@usrType", userEntityObj.usrType_);
                cmdObj.Parameters.AddWithValue("@usrBranchId", userEntityObj.usrBranchId_);
                cmdObj.Parameters.AddWithValue("@usrBranchName", userEntityObj.usrBranchName_);
                cmdObj.Parameters.AddWithValue("@usrBranchCity", userEntityObj.usrBranchCity_);
                cmdObj.Parameters.AddWithValue("@usrBranchLocation", userEntityObj.usrBranchLocation_);
                cmdObj.Parameters.AddWithValue("@usrBranchAddress", userEntityObj.usrBranchAddress_);
                cmdObj.Parameters.AddWithValue("@usrBranchPincode", userEntityObj.usrBranchPincode_);
                cmdObj.Parameters.AddWithValue("@usrSalary", userEntityObj.usrSalary_);
                cmdObj.Parameters.AddWithValue("@usrDoj", userEntityObj.usrDoj_);
                conObj.Open();
                cmdObj.ExecuteNonQuery();

            }

        }


        public void branchRegDAL(branchEntity branchEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                SqlCommand cmdObj = new SqlCommand("branchRegistration", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;

                cmdObj.Parameters.Clear();
                cmdObj.Parameters.AddWithValue("@brMngId", branchEntityObj.brMngId_);
                cmdObj.Parameters.AddWithValue("@brMngName", branchEntityObj.brMngName_);
                cmdObj.Parameters.AddWithValue("@brMngPassword", branchEntityObj.brMngPassword_);
                cmdObj.Parameters.AddWithValue("@brMngEmail", branchEntityObj.brMngEmail_);
                cmdObj.Parameters.AddWithValue("@brMngMobile", branchEntityObj.brMngMobile_);
                cmdObj.Parameters.AddWithValue("@brMngAddress", branchEntityObj.brMngAddress_);
                cmdObj.Parameters.AddWithValue("@brBranchId", branchEntityObj.brBranchId_);
                cmdObj.Parameters.AddWithValue("@brBranchName", branchEntityObj.brBranchName_);
                cmdObj.Parameters.AddWithValue("@brBranchCity", branchEntityObj.brBranchCity_);
                cmdObj.Parameters.AddWithValue("@brBranchLocation", branchEntityObj.brBranchLocation_);
                cmdObj.Parameters.AddWithValue("@brBranchAddress", branchEntityObj.brBranchAddress_);
                cmdObj.Parameters.AddWithValue("@brBranchPincode", branchEntityObj.brBranchPincode_);
                cmdObj.Parameters.AddWithValue("@brMngSalary", branchEntityObj.brMngSalary_);
                cmdObj.Parameters.AddWithValue("@brMngDoj", branchEntityObj.brMngDoj_);
                conObj.Open();
                cmdObj.ExecuteNonQuery();

            }

        }
    }
}
