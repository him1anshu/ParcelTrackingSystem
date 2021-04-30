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
    public class addRecEmpDAL
    {

        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public string addRecEmpDALF(string track,out string consDestBranchId,out string consReceiverName,out string consReceiverPhone,out string consTotalItems,out string consMaterialDesc )
        {
            string consSourceBranchId=string.Empty;
            string consDestBranchIdd=string.Empty;
            string consReceiverNamee=string.Empty;
            string consReceiverPhonee=string.Empty;
            string consTotalItemss=string.Empty;
            string consMaterialDescc = string.Empty;


            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("addRecEmp", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@trckId", track);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {

                        consSourceBranchId =reader[0].ToString() ;
                        consDestBranchIdd = reader[1].ToString();
                        consReceiverNamee = reader[2].ToString();
                        consReceiverPhonee = reader[3].ToString();
                        consTotalItemss = reader[4].ToString();
                        consMaterialDescc = reader[5].ToString();

                    }
                }
            }

            consDestBranchId = consDestBranchIdd;
            consReceiverName = consReceiverNamee;
            consReceiverPhone = consReceiverPhonee;
            consTotalItems = consTotalItemss;
            consMaterialDesc = consMaterialDescc;
            return consSourceBranchId;

        }

    }
}
