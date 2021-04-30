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
    public class locationFinderBAL
    {
        locationFinderDAL locationFinderDALObj = new locationFinderDAL();

        public int locationFinderBALF(branchEntity branchEntityObj)
        {
            
            int locResBAL=locationFinderDALObj.locationFinderDALF(branchEntityObj);
            return locResBAL;
        }

        public DataSet locFinderBALF(branchEntity branchEntityObj)
        {
            
            return locationFinderDALObj.locFinderDALF(branchEntityObj);
        }
        public int locationFinderBALF1(branchEntity branchEntityObj) 
        {
           
            int locResBAL1 = locationFinderDALObj.locationFinderDALF1(branchEntityObj);
            return locResBAL1;
        }

        public DataSet locFinderBALF1(branchEntity branchEntityObj) 
        {
            
            return locationFinderDALObj.locFinderDALF1(branchEntityObj);
        }
    }
}
