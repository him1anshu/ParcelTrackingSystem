using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PTS_Business_Entity
{
   public class feedbackEntity
    {

        #region Field

        string _feedName;
        string _feedEmail;
        decimal _feedMobile;
        string _feedFeedback;

        #endregion


        #region property

        public string feedName_ { get { return _feedName; } set { _feedName = value; } }
        public string feedEmail_ { get { return _feedEmail; } set { _feedEmail = value; } }
        public decimal  feedMobile_ { get { return _feedMobile; } set { _feedMobile = value; } }
        public string feedFeedback_ { get { return _feedFeedback; } set { _feedFeedback = value; } }

        #endregion

       
        #region constructor

        public feedbackEntity() { 
        }
        

        #endregion

    }
}
