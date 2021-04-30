using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PTS_Business_Entity
{
    public class deliveryEntity
    {
          #region Field
        //string _delId;
        string _delTrackId;
        string _delSourceBranchId;
        string _delSourceBranchName;
        string _delEmpMail;
        DateTime _delDateOfDel;
        string _delCurrentBranchId;
        string _delNextBranchId;
        DateTime _delDateOfRec;
        string _delDestnBranchId;
        string _delDestnBranchName;
        DateTime _delExpDateOfDel;
        string _delCurrentLocation;
        bool _delStatus;
        
    #endregion


   #region property

       
        //public string delID_{ get { return _delId; } set {_delId = value; } }
        public string delTrackId_ { get { return _delTrackId; } set { _delTrackId = value; } }
        public string delSourceBranchId_ { get { return _delSourceBranchId; } set { _delSourceBranchId = value; } }
        public string delSourceBranchName_ { get { return _delSourceBranchName; } set { _delSourceBranchName = value; } }
        public string delEmpMail_ { get { return _delEmpMail; } set { _delEmpMail = value; } }
        public System.DateTime delDateOfDel_ { get { return _delDateOfDel; } set { _delDateOfDel = value; } }
        public string delCurrentBranchId_ { get { return _delCurrentBranchId; } set { _delCurrentBranchId = value; } }
        public string delNextBranchId_ { get { return _delNextBranchId; } set { _delNextBranchId = value; } }
        public System.DateTime delDateOfRec_ { get { return _delDateOfRec; } set { _delDateOfRec = value; } }
        public string delDestnBranchId_ { get { return _delDestnBranchId; } set { _delDestnBranchId = value; } }
        public string delDestnBranchName_ { get { return _delDestnBranchName; } set { _delDestnBranchName = value; } }
        public System.DateTime delExpDateOfDel_ { get { return _delExpDateOfDel; } set {_delExpDateOfDel = value; } }
        public string delCurrentLocation_ { get { return _delCurrentLocation; } set { _delCurrentLocation = value; } }
        public bool delStatus_ { get { return _delStatus; } set { _delStatus = value; } }
    


  #endregion

        
        #region constructor

        public deliveryEntity() { 
        }
        

        #endregion

    }
}
