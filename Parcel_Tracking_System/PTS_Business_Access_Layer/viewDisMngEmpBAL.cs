using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PTS_Data_Access_Layer;
using PTS_Business_Entity;

namespace PTS_Business_Access_Layer
{
    public class viewDisMngEmpBAL
    {
        public DataSet viewDisMngEmpBALF(string disBranchId)
        {
            viewDisMngEmpDAL viewDisMngEmpDALObj = new viewDisMngEmpDAL();
            return viewDisMngEmpDALObj.viewDisMngEmpDALF(disBranchId);
        }

    }
}
