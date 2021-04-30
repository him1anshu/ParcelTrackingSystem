using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PTS_Business_Entity
{
   public class receiverEntity
    {
        
     #region Field

       //string _recId;
       string _recTrackId;
        string _recReceiverName;
        decimal _recReceiverPhone;
        string _recSourceBranchId;
        string _recDestBranchId;
        string _recMaterialDesc;
        decimal _recTotalItems;
       DateTime _recDateOfRec;
       bool _recStatus;
      
        
    #endregion


   #region property

        //public string recId_ { get { return _recId; } set { _recId = value; } }
        public string recTrackId_ { get { return _recTrackId; } set { _recTrackId = value; } }
        public string recReceiverName_ { get { return _recReceiverName; } set {_recReceiverName = value; } }
        public decimal recReceiverPhone_ { get { return _recReceiverPhone; } set {_recReceiverPhone = value; } }
        public string recSourceBranchId_ { get { return _recSourceBranchId; } set { _recSourceBranchId = value; } }
        public string recDestBranchId_ { get { return _recDestBranchId; } set {_recDestBranchId = value; } }
        public string recMaterialDesc_ { get { return _recMaterialDesc; } set { _recMaterialDesc = value; } }
        public decimal recTotalItems_ { get { return _recTotalItems; } set {_recTotalItems = value; } }
       public DateTime recDateOfRec_{ get { return _recDateOfRec; } set { _recDateOfRec = value; } }
       public bool recStatus_ { get { return _recStatus; } set { _recStatus = value; } }
      
    

  #endregion

       
        #region constructor

        public receiverEntity() { 
        }
        

        #endregion
      
    }
}
