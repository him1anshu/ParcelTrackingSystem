using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PTS_Business_Entity;
using PTS_Data_Access_Layer;

namespace PTS_Business_Access_Layer
{
   public class addConsignmentBAL
    {
       addConsignmentDAL addConsignmentDALObj = new addConsignmentDAL();

       public void addConsignmentBALF(consignmentEntity consignmentEntityObj)
       {
           addConsignmentDALObj.addConsignmentDALF(consignmentEntityObj);
         
       }
       public DataSet addServicesEmpBALF()
       {
           return addConsignmentDALObj.addServicesEmpDALF();
       }


       public DataSet addBranchConsEmpBALF()
       {
           return addConsignmentDALObj.addBranchConsEmpDALF();
       }

       public string consCityBALF(cityEntity cityEntityObj, out string srcBrLong)
       {
           string srcBrLat = addConsignmentDALObj.consCityDALF(cityEntityObj, out srcBrLong);
           return srcBrLat;
       }

       public string consCityBALF1(cityEntity cityEntityObj, out string destBrLong)
       {
           string destBrLat = addConsignmentDALObj.consCityDALF1(cityEntityObj, out destBrLong);
           return destBrLat;
       }


       public string consServiceCostBALF(servicesEntity servicesEntityObj,out string costAccDist)
       {
           string costAccWeight = addConsignmentDALObj.consServiceCostDALF(servicesEntityObj, out costAccDist);
           return costAccWeight;
       }

       public string consShrMailBALF(consignmentEntity consignmentEntityObj,out string trckId)
       {
           string shrMail = addConsignmentDALObj.consShrMailDALF(consignmentEntityObj,out trckId);
           return shrMail;
       }


       public string addBrConsEmpBALF(string branchId, out string branchCity)
       {
           string branchName = addConsignmentDALObj.addBrConsEmpDALF(branchId, out branchCity);
           return branchName;
       }
    }
}
