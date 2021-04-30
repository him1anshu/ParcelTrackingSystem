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
    public class empEditDelDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public string empEditDelDALF(string mngDelId, out string delTrackId, out string delSourceBranchId, out string delSourceBranchName, out string delEmpMail, out string delDateOfDel, out string delCurrentBranchId, out string delNextBranchId, out string delDateOfRec, out string delDestnBranchId, out string delDestnBranchName, out string delExpDateOfDel, out string delCurrentLocation, out string delStatus)
        {
            string delId = string.Empty;
            string delTrackIdd = string.Empty;
            string delSourceBranchIdd = string.Empty;
            string delSourceBranchNamee = string.Empty;
            string delEmpMaill = string.Empty;
            string delDateOfDell = string.Empty;
            string delCurrentBranchIdd = string.Empty;
            string delNextBranchIdd = string.Empty;
            string delDateOfRecc = string.Empty;
            string delDestnBranchIdd = string.Empty;
            string delDestnBranchNamee = string.Empty;
            string delExpDateOfDell = string.Empty;
            string delCurrentLocationn = string.Empty;
            string delStatuss = string.Empty;
           
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("empEditDel", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@delId", mngDelId);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        delId=reader[1].ToString();
                        delTrackIdd =reader[2].ToString();
                        delSourceBranchIdd = reader[3].ToString();
                        delSourceBranchNamee =reader[4].ToString();
                        delEmpMaill = reader[5].ToString();
                        delDateOfDell = reader[6].ToString();
                        delCurrentBranchIdd = reader[7].ToString();
                        delNextBranchIdd = reader[8].ToString();
                        delDateOfRecc = reader[9].ToString();
                        delDestnBranchIdd = reader[10].ToString();
                        delDestnBranchNamee = reader[11].ToString();
                        delExpDateOfDell = reader[12].ToString();
                        delCurrentLocationn = reader[13].ToString();
                        delStatuss = reader[14].ToString();

                    }
                }
            }
            delTrackId = delTrackIdd; ;
            delSourceBranchId = delSourceBranchIdd;
            delSourceBranchName = delSourceBranchNamee;
            delEmpMail = delEmpMaill;
            delDateOfDel = delDateOfDell;
            delCurrentBranchId = delCurrentBranchIdd;
            delNextBranchId = delNextBranchIdd;
            delDateOfRec = delDateOfRecc;
            delDestnBranchId = delDestnBranchIdd;
            delDestnBranchName = delDestnBranchNamee;
            delExpDateOfDel = delExpDateOfDell;
            delCurrentLocation = delCurrentLocationn;
            delStatus = delStatuss;
            return delId;
        }
    }
}
