using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTS_Business_Entity
{
    public class cityEntity 
    {
        #region Field

        decimal _cityLatitude;
        string _cityName;
        decimal _cityLongitude;
        #endregion
    
        #region property

        public decimal cityLatitude_ { get { return _cityLatitude; } set { _cityLatitude = value; } }
        public string cityName_ { get { return _cityName; } set { _cityName = value; } }
        public decimal cityLongitude_ { get { return _cityLongitude; } set { _cityLongitude = value; } }

  #endregion
  
        #region constructor

        public cityEntity() { 
        }
        

        #endregion

    
    }
}
