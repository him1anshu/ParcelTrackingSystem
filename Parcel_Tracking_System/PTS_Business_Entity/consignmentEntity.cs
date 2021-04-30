using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PTS_Business_Entity
{
    public class consignmentEntity
    {
          #region Field
        string _consId;
        string _consTrackId;
        string _consShipperName;
        string _consShipperAddress;
        decimal _consShipperMobile;
        string _consShipperMail;
        string _consMaterialDescription;
        decimal _consTotalItems;
        decimal _consTotalWeight;
        decimal _consTotalDistance;
        string _consServiceType;
        decimal _consShippingCharge;
        DateTime _consDateOfBooking;
        string _consSrcBranchId;
        string _consSrcBranchName;
        string _consSrcBranchCity;
        string _consDestBranchId;
        string _consDestBranchName;
        string _consDestBranchCity;
        string _consDescription;
        string _consReceiverName;
        string _consReceiverAddress;
        decimal _consReceiverMobile;
        string _consReceiverMail;
        string _consBookedBy;
        bool _consDelStatus;
        bool _consDisStatus;
        bool _consRecStatus;
        
        
    #endregion


   #region property

        public string consId_{ get { return _consId; } set {_consId = value; } }
        public string consTrackId_ { get { return _consTrackId; } set { _consTrackId = value; } }
        public string consShipperName_ { get { return _consShipperName; } set { _consShipperName = value; } }
        public string consShipperAddress_{ get { return _consShipperAddress; } set {_consShipperAddress = value; } }
        public decimal consShipperMobile_ { get { return _consShipperMobile; } set { _consShipperMobile = value; } }
        public string consShipperMail_ { get { return _consShipperMail; } set { _consShipperMail = value; } }
        public string consMaterialDescription_ { get { return _consMaterialDescription; } set { _consMaterialDescription = value; } }
        public decimal consTotalItems_ { get { return _consTotalItems; } set {_consTotalItems = value; } }
        public decimal consTotalWeight_ { get { return _consTotalWeight; } set { _consTotalWeight = value; } }
        public decimal consTotalDistance_ { get { return _consTotalDistance; } set { _consTotalDistance = value; } }
        public string consServiceType_ { get { return _consServiceType; } set {_consServiceType = value; } }
        public decimal consShippingCharge_ { get { return _consShippingCharge; } set { _consShippingCharge = value; } }
        public DateTime consDateOfBooking_ { get { return _consDateOfBooking; } set { _consDateOfBooking= value; } }
        public string consSrcBranchId_ { get { return _consSrcBranchId; } set {_consSrcBranchId = value; } }
        public string consSrcBranchName_ { get { return _consSrcBranchName; } set { _consSrcBranchName = value; } }
        public string consSrcBranchCity_ { get { return _consSrcBranchCity; } set {_consSrcBranchCity = value; } }
        public string consDestBranchId_ { get { return _consDestBranchId; } set { _consDestBranchId = value; } }
        public string consDestBranchName_ { get { return _consDestBranchName; } set { _consDestBranchName = value; } }
        public string consDestBranchCity_ { get { return _consDestBranchCity; } set { _consDestBranchCity = value; } }
        public string consDescription_ { get { return _consDescription; } set {_consDescription = value; } }
        public string consReceiverName_ { get { return _consReceiverName; } set { _consReceiverName = value; } }
        public string consReceiverAddress_ { get { return _consReceiverAddress; } set {_consReceiverAddress = value; } }
        public decimal consReceiverMobile_ { get { return _consReceiverMobile; } set {_consReceiverMobile = value; } }
        public string consReceiverMail_ { get { return _consReceiverMail; } set { _consReceiverMail = value; } }
        public string consBookedBy_ { get { return _consBookedBy; } set { _consBookedBy = value; } }
        public bool consDisStatus_ { get { return _consDisStatus; } set { _consDisStatus = value; } }
        public bool consDelStatus_ { get { return _consDelStatus; } set { _consDelStatus = value; } }
        public bool consRecStatus_ { get { return _consRecStatus; } set { _consRecStatus = value; } }
    
    


  #endregion

        
        #region constructor

        public consignmentEntity() { 
        }
        

        #endregion

    }
}
