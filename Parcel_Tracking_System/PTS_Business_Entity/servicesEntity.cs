using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PTS_Business_Entity
{
    public class servicesEntity
    {
          #region Field
        string _serviceId;
        string _serviceType;
       decimal _costWeight;
        decimal _costDistance;
        
    #endregion


   #region property

        public string serviceId_ { get { return _serviceId; } set { _serviceId = value; } }
        public string serviceType_ { get { return _serviceType; } set { _serviceType = value; } }
        public decimal costWeight_ { get { return _costWeight; } set { _costWeight = value; } }
        public decimal costDistance_ { get { return _costDistance; } set { _costDistance = value; } }
       

  #endregion

        
        #region constructor

        public servicesEntity() { 
        }
        

        #endregion

    }
}
