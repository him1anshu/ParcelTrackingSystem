using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PTS_Data_Access_Layer;

namespace PTS_Business_Access_Layer
{
    public class addRecEmpBAL
    {

        public string addRecEmpBALF(string track, out string consDestBranchId, out string consReceiverName, out string consReceiverPhone, out string consTotalItems, out string consMaterialDesc)
        {
            addRecEmpDAL addRecEmpDALObj = new addRecEmpDAL();
            string consSourceBranchId = addRecEmpDALObj.addRecEmpDALF(track, out consDestBranchId, out consReceiverName, out consReceiverPhone, out consTotalItems, out consMaterialDesc);
            return consSourceBranchId;
        }

    }
}
