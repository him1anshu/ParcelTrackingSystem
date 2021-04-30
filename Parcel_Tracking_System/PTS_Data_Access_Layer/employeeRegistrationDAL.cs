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
    public class employeeRegistrationDAL
    {
        String CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public void employeeRegDAL(userEntity userEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                SqlCommand cmdObj = new SqlCommand("employeeRegistration", conObj);
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
                cmdObj.Parameters.AddWithValue("@usrBranchLocation", userEntityObj.usrBranchLocation_);
                cmdObj.Parameters.AddWithValue("@usrBranchCity", userEntityObj.usrBranchCity_);
                cmdObj.Parameters.AddWithValue("@usrBranchAddress", userEntityObj.usrBranchAddress_);
                cmdObj.Parameters.AddWithValue("@usrBranchPincode", userEntityObj.usrBranchPincode_);
                cmdObj.Parameters.AddWithValue("@usrRole", userEntityObj.usrRole_);
                cmdObj.Parameters.AddWithValue("@usrSalary", userEntityObj.usrSalary_);
                cmdObj.Parameters.AddWithValue("@usrDoj", userEntityObj.usrDoj_);
                conObj.Open();
                cmdObj.ExecuteNonQuery();

            }

        }
    }
}
