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
    public class viewConsAdminDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public DataSet viewConsAdminDALF()
        {
            using(SqlConnection conObj=new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("adminConsView",conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sdaObj=new SqlDataAdapter(cmdObj);
                DataSet dsObj=new DataSet();
                sdaObj.Fill(dsObj);
                return dsObj;
            }
        }

    }
}
