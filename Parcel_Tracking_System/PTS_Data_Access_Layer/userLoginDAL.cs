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
    public class userLoginDAL
    {
        String CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;
        public int userLoginFDAL(userEntity userEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("userLogin",conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@usrEmail",userEntityObj.usrEmail_);
                cmdObj.Parameters.AddWithValue("@usrPassword",userEntityObj.usrPassword_);
                cmdObj.Parameters.AddWithValue("@usrType",userEntityObj.usrType_);
                conObj.Open();
                int usrCount = Convert.ToInt32(cmdObj.ExecuteScalar());
                return usrCount;
            }
        }
    }
}
