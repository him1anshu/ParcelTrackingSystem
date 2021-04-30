using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTS_Business_Entity
{
    class trackEntity
    {
    #region Field

       string _trackId;
        string _trackDisStatus;
        string _trackRecStatus;
        
    #endregion


   #region property

        public string trackId_ { get { return _trackId; } set { _trackId = value; } }
        public string trackDisStatus_ { get { return _trackDisStatus; } set { _trackDisStatus = value; } }
        public string trackRecStatus_ { get { return _trackRecStatus; } set { _trackRecStatus = value; } }
        

  #endregion

       
        #region constructor

        public trackEntity() { 
        }
        

        #endregion
      
    }
}
