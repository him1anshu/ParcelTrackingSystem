using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PTS_Business_Entity
{
   public class dispatchEntity
    {
          #region Field
        //string _disId;
        string _disTrackId;
        string _disEmpId;
        string _disEmpName;
        decimal _disEmpMobile;
        string _disBranchId;
        string _disBranchName;
        string _disShipperName;
        string _disShipperAddress;
        string _disShipperMail;
        decimal _disShipperPhone;
        string _disReceiverName;
        string _disReceiverAddress;
        string _disReceiverMail;
        decimal _disReceiverPhone;
        DateTime _disDateOfDis;
        string _disBookedBy;
        bool _disStatus;
        
      
       
    #endregion


   #region property

        //public string disId_{ get { return _disId; } set {_disId = value; } }
        public string disTrackId_ { get { return _disTrackId; } set { _disTrackId = value; } }
        public string disEmpId_ { get { return _disEmpId; } set { _disEmpId = value; } }
        public string disEmpName_ { get { return _disEmpName; } set { _disEmpName = value; } }
        public decimal disEmpMobile_ { get { return _disEmpMobile; } set { _disEmpMobile = value; } }
        public string disBranchId_ { get { return _disBranchId; } set { _disBranchId = value; } }
        public string disBranchName_ { get { return _disBranchName; } set { _disBranchName = value; } }
        public string disShipperName_ { get { return _disShipperName; } set { _disShipperName= value; } }
        public string disShipperAddress_ { get { return _disShipperAddress; } set { _disShipperAddress= value; } }
        public string disShipperMail_ { get { return _disShipperMail; } set { _disShipperMail = value; } }
        public decimal disShipperPhone_ { get { return _disShipperPhone; } set {_disShipperPhone = value; } }
        public string disReceiverName_ { get { return _disReceiverName; } set { _disReceiverName = value; } }
        public string disReceiverAddress_ { get { return _disReceiverAddress; } set { _disReceiverAddress = value; } }
        public string disReceiverMail_ { get { return _disReceiverMail; } set { _disReceiverMail = value; } }
        public decimal disReceiverPhone_ { get { return _disReceiverPhone; } set { _disReceiverPhone = value; } }
        public DateTime disDateOfDis_ { get { return _disDateOfDis; } set { _disDateOfDis = value; } }
        public string disBookedBy_ { get { return _disBookedBy; } set { _disBookedBy = value; } }
        public bool disStatus_ { get { return _disStatus; } set { _disStatus = value; } }


  #endregion

       
        #region constructor

        public dispatchEntity() { 
        }
        

        #endregion

    }
}
