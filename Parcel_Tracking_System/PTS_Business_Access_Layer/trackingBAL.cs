using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PTS_Data_Access_Layer;

namespace PTS_Business_Access_Layer
{
    public class trackingBAL
    {
        trackingDAL trackingDALObj = new trackingDAL();

        public int trackingCountConsBALF(string trackId)
        {
            int trckCountDAL = Convert.ToInt32(trackingDALObj.trackingCountConsDALF(trackId));
            return trckCountDAL;
        }

        public int trackingCountBALF(string trackId)
        {
            int trckCountDAL = Convert.ToInt32(trackingDALObj.trackingCountDALF(trackId));
            return trckCountDAL;
        }

        public string trackingBALF(string trackId)
        { 
            string currentLocation = trackingDALObj.trackingDALF(trackId);
            return currentLocation;
        }

    }
}
