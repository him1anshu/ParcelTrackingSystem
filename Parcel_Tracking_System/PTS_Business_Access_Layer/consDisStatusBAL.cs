using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PTS_Business_Entity;
using PTS_Data_Access_Layer;

namespace PTS_Business_Access_Layer
{
    public class consDisStatusBAL
    {

        consDisStatusDAL consDisStatusDALObj = new consDisStatusDAL();

        public void consDisStatusBALF(consignmentEntity consignmentEntityObj,string trackId)
        {
            consDisStatusDALObj.consDisStatusDALF(consignmentEntityObj, trackId);

        }

    }
}
