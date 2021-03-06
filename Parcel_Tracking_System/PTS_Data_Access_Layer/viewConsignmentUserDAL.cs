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
    public class viewConsignmentUserDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public DataSet viewConsUserDALF(string usrEmail)
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("usrConsView", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@consShipperMail", usrEmail);
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;
            }

        }
    }
}
