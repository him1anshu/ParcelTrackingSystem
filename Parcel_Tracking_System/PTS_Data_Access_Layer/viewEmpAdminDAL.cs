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
    public class viewEmpAdminDAL
    {

        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public DataSet viewEmpAdminDALF(userEntity userEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("viewEmpAdmin", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@usrType", userEntityObj.usrType_);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;
            }
        }

        public DataSet viewEmpMngDALF(userEntity userEntityObj)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("viewEmpMng", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@usrType", userEntityObj.usrType_);
                cmdObj.Parameters.AddWithValue("@usrBranchId", userEntityObj.usrBranchId_);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;
            }
        }

    }
}
