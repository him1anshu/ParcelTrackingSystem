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
    public class mngEditConsBAL
    {

        public string mngEditConsBALF(string mngConsId,out string consTrackId, out string consShipperName, out string consShipperAddress, out string consShipperMobile, out string consShipperMail, out string consMaterialDescription, out string consTotalItems, out string consTotalWeight, out string consTotalDistance, out string consServiceType, out string consShippingCharge, out string consDateOfBooking, out string consSrcBranchId, out string consSrcBranchName, out string consSrcBranchCity, out string consDestBranchId, out string consDestBranchName, out string consDestBranchCity, out string consReceiverName, out string consReceiverAddress, out string consReceiverMobile, out string consReceiverMail, out string consBookedBy)
        {
            mngEditConsDAL mngEditConsDALObj = new mngEditConsDAL();
            string consId=mngEditConsDALObj.mngEditConsDALF(mngConsId,out consTrackId, out consShipperName, out consShipperAddress, out consShipperMobile, out consShipperMail, out consMaterialDescription, out consTotalItems, out consTotalWeight, out consTotalDistance, out consServiceType, out consShippingCharge, out consDateOfBooking, out consSrcBranchId, out consSrcBranchName,out consSrcBranchCity,out consDestBranchId,out consDestBranchName,out consDestBranchCity,out consReceiverName,out consReceiverAddress,out consReceiverMobile,out consReceiverMail,out consBookedBy);
            return consId;
        }
    }
}
