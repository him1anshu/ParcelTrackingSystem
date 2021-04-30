using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PTS_Data_Access_Layer;
using PTS_Business_Entity;

namespace PTS_Business_Access_Layer
{
    public class userLoginBAL
    {
        public int userLoginFBAL(userEntity userEntityObj)
        {
            userLoginDAL userLoginDALObj = new userLoginDAL();
            int usrCountDAL = Convert.ToInt32(userLoginDALObj.userLoginFDAL(userEntityObj));
            return usrCountDAL;
        }
    }
}
