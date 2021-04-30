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
    public class userRegistrationDAL
    {

        String CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public void newUserRegDAL(userEntity userEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                
                    SqlCommand cmdObj = new SqlCommand("userRegistration", conObj);
                    cmdObj.CommandType = CommandType.StoredProcedure;

                    cmdObj.Parameters.Clear();
                    cmdObj.Parameters.AddWithValue("@usrName", userEntityObj.usrName_);
                    cmdObj.Parameters.AddWithValue("@usrPassword", userEntityObj.usrPassword_);
                    cmdObj.Parameters.AddWithValue("@usrEmail", userEntityObj.usrEmail_);
                    cmdObj.Parameters.AddWithValue("@usrMobile", userEntityObj.usrMobile_);
                    cmdObj.Parameters.AddWithValue("@usrAddress", userEntityObj.usrAddress_);
                    cmdObj.Parameters.AddWithValue("@usrType", userEntityObj.usrType_);
                    cmdObj.Parameters.AddWithValue("@usrId", userEntityObj.usrId_);
                    conObj.Open();
                    cmdObj.ExecuteNonQuery();
               
            }

        }
    }
}
