using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PTS_Data_Access_Layer;

namespace PTS_Business_Access_Layer
{
    public class addDispEmpBAL
    {

        public string addDispEmpBALF(string track, out string consShipperMobile, out string consShipperAddress, out string consReceiverName, out string consReceiverMobile, out string consReceiverAddress, out string consShipperMail, out string consReceiverMail)
        {
            addDispEmpDAL addDispEmpDALObj=new addDispEmpDAL();
            string consShipperName = addDispEmpDALObj.addDispEmpDALF(track,out consShipperMobile,out consShipperAddress,out consReceiverName,out consReceiverMobile,out consReceiverAddress,out consShipperMail,out consReceiverMail);
            return consShipperName;
        }

    }
}
