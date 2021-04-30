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
    public class viewRecAdminDAL
    {

        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public DataSet viewRecAdminDALF()
        {
            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("viewRecAdmin", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sdaObj = new SqlDataAdapter(cmdObj);
                DataSet dsObj = new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;
            }
        }

    }
}
