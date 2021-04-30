using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using PTS_Data_Access_Layer;
using PTS_Business_Entity;

namespace PTS_Business_Access_Layer
{
    public class empEditDelBAL
    {
        public string empEditDelBALF(string mngDelId, out string delTrackId, out string delSourceBranchId, out string delSourceBranchName, out string delEmpMail, out string delDateOfDel, out string delCurrentBranchId, out string delNextBranchId, out string delDateOfRec, out string delDestnBranchId, out string delDestnBranchName, out string delExpDateOfDel, out string delCurrentLocation, out string delStatus)
        {
            empEditDelDAL empEditDelDALObj = new empEditDelDAL();
            string delId=empEditDelDALObj.empEditDelDALF(mngDelId, out delTrackId, out delSourceBranchId, out delSourceBranchName, out delEmpMail, out delDateOfDel, out delCurrentBranchId, out delNextBranchId, out delDateOfRec, out delDestnBranchId, out delDestnBranchName, out delExpDateOfDel, out delCurrentLocation, out delStatus);
            return delId;
        }
    }
}
