using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PTS_Business_Entity;
using PTS_Data_Access_Layer;

namespace PTS_Business_Access_Layer
{
    public class managerRegistrationBAL
    {
        public void managerRegBAL(userEntity userEntityObj)
        {
        managerRegistrationDAL mrdObj = new managerRegistrationDAL();
        mrdObj.managerRegDAL(userEntityObj);
        }

        public void branchRegBAL(branchEntity branchEntityObj)
        {
            managerRegistrationDAL managerRegistrationObj = new managerRegistrationDAL();
            managerRegistrationObj.branchRegDAL(branchEntityObj);
        }
    }
}
