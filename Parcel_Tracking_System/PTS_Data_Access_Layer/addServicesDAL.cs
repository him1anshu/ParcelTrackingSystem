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
    public class addServicesDAL
    {
     String CS=ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

     public void addservicesDALF(servicesEntity servicesEntityObj)
     {

         using (SqlConnection conObj = new SqlConnection(CS)) 
         {
             SqlCommand cmdObj = new SqlCommand("addServices",conObj);
             cmdObj.CommandType = CommandType.StoredProcedure;

             cmdObj.Parameters.Clear();
             cmdObj.Parameters.AddWithValue("@serviceId",servicesEntityObj.serviceId_);
             cmdObj.Parameters.AddWithValue("@serviceType",servicesEntityObj.serviceType_);
             cmdObj.Parameters.AddWithValue("@costWeight",servicesEntityObj.costWeight_);
             cmdObj.Parameters.AddWithValue("@costDistance",servicesEntityObj.costDistance_);
             conObj.Open();
             cmdObj.ExecuteNonQuery();

         }

     }
    }
}
