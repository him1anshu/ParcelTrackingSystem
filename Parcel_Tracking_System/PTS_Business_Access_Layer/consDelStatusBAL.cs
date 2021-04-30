using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PTS_Business_Entity;
using PTS_Data_Access_Layer;

namespace PTS_Business_Access_Layer
{
    public class consDelStatusBAL
    {
        consDelStatusDAL consDelStatusDALObj = new consDelStatusDAL();

        public void consDelStatusBALF(consignmentEntity consignmentEntityObj, string trackId)
        {
            consDelStatusDALObj.consDelStatusDALF(consignmentEntityObj, trackId);

        }

    }
}
