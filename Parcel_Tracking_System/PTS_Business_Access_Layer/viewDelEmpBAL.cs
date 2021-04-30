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
    public class viewDelEmpBAL
    {

        viewDelEmpDAL viewDelEmpDALObj = new viewDelEmpDAL();

        public DataSet viewDelEmpBALF()
        {
            return viewDelEmpDALObj.viewDelEmpDALF();
        }

        public string viewDelEmpCondBALF(out string nextBranch, out string destBranch, out string currentBranch)
        {
            string sourceBranch = viewDelEmpDALObj.viewDelEmpCondDALF(out nextBranch,out destBranch,out currentBranch);
            return sourceBranch;
        }

    }
}
