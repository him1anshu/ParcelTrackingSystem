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
    public class viewFeedAdminBAL
    {

        public DataSet viewFeedAdminBALF()
        {
            viewFeedAdminDAL viewFeedAdminDALObj = new viewFeedAdminDAL();
            return viewFeedAdminDALObj.viewFeedAdminDALF();
        }

    }
}
