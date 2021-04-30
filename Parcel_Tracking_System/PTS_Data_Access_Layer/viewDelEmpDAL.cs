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
    public class viewDelEmpDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public string viewDelEmpCondDALF(out string nextBranch,out string destBranch,out string currentBranch)
        {
            string sourceBranch = string.Empty;
            string nxtBranch = string.Empty;
            string dstBranch = string.Empty;
            string currntBranch = string.Empty;

            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("viewDelEmpCond", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        sourceBranch = reader[0].ToString();
                        nxtBranch = reader[1].ToString();
                        dstBranch = reader[2].ToString();
                        currntBranch = reader[3].ToString();
                    }
                }
            }

            nextBranch = nxtBranch;
            destBranch = dstBranch;
            currentBranch = currntBranch;
            return sourceBranch;

        }

        public DataSet viewDelEmpDALF()
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("viewDelEmpStr", conObj);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;

            }
        }

    }
}
