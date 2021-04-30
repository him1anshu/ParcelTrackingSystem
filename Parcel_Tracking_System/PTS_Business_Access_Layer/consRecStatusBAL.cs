using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PTS_Business_Entity;
using PTS_Data_Access_Layer;

namespace PTS_Business_Access_Layer
{
    public class consRecStatusBAL
    {

        consRecStatusDAL consRecStatusDALObj = new consRecStatusDAL();

        public void consRecStatusBALF(consignmentEntity consignmentEntityObj, string trackId)
        {
            consRecStatusDALObj.consRecStatusDALF(consignmentEntityObj, trackId);

        }

    }
}
