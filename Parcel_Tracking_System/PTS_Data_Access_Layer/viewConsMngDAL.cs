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
    public class viewConsMngDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public string viewConsMngMailDALF(string mngMail)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                string mngBranch = string.Empty;
                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("viewConsMngMail", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@usrEmail", mngMail);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        mngBranch = reader[0].ToString();
                    }
                }

                return mngBranch;
            }
            }

        public DataSet viewConsMngDALF(string mngBranch)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("viewConsMng", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@consSrcBranchId", mngBranch);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;
            }

        }


    }
}
