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
    public class addDispEmpDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public string addDispEmpDALF(string track, out string consShipperMobile, out string consShipperAddress, out string consReceiverName, out string consReceiverMobile, out string consReceiverAddress,out string consShipperMail,out string consReceiverMail)
        {
            string consShipperName = string.Empty;
            string consShipperMobilee=string.Empty;
            string consShipperAddresss=string.Empty;
            string consReceiverNamee=string.Empty;
            string consReceiverMobilee=string.Empty;
            string consReceiverAddresss = string.Empty;
            string consShipperMaill = string.Empty;
            string consReceiverMaill = string.Empty;
            

            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("addDispEmp", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@trckId", track);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        consShipperName = reader[0].ToString();
                        consShipperMobilee= reader[1].ToString();
                        consShipperAddresss = reader[2].ToString();
                        consReceiverNamee = reader[3].ToString();
                        consReceiverMobilee = reader[4].ToString();
                        consReceiverAddresss = reader[5].ToString();
                        consShipperMaill = reader[6].ToString();
                        consReceiverMaill = reader[7].ToString();
                    }
                }
            }

            consShipperMobile = consShipperMobilee;
            consShipperAddress = consShipperAddresss;
            consReceiverName = consReceiverNamee;
            consReceiverMobile = consReceiverMobilee;
            consReceiverAddress = consReceiverAddresss;
            consShipperMail = consShipperMaill;
            consReceiverMail = consReceiverMaill;
            return consShipperName;

        }

    }
}
