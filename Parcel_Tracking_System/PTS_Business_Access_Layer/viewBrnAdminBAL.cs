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
    public class viewBrnAdminBAL
    {

        public DataSet viewBrnAdminBALF()
        {
            viewBrnAdminDAL viewBrnAdminDALObj = new viewBrnAdminDAL();
            return viewBrnAdminDALObj.viewBrnAdminDALF();
        }

    }
}
