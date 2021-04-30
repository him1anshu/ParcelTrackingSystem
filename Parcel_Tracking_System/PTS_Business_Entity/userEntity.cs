using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PTS_Business_Entity
{
    public class userEntity
    {
        
          #region Field
        string _usrId;
        string _usrPassword;
        string _usrName;
        string _usrEmail;
        decimal _usrMobile;
        string _usrAddress;
        string _usrType;
        string _usrBranchId;
        string _usrBranchName;
        string _usrBranchCity;
        string _usrBranchLocation;
        string _usrBranchAddress;
        decimal _usrBranchPincode;
        string _usrRole;
        decimal _usrSalary;
        DateTime _usrDoj;
      
   #endregion


   #region property

        public string usrId_{ get { return _usrId; } set {_usrId = value; } }
        public string usrPassword_ { get { return _usrPassword; } set { _usrPassword = value; } }
        public string usrName_ { get { return _usrName; } set { _usrName= value; } }
        public string usrEmail_ { get { return _usrEmail; } set { _usrEmail= value; } }
        public decimal usrMobile_ { get { return _usrMobile; } set { _usrMobile = value; } }
        public string usrAddress_ { get { return _usrAddress; } set {_usrAddress = value; } }
        public string usrType_ { get { return _usrType; } set { _usrType = value; } }
        public string usrBranchId_ { get { return _usrBranchId; } set { _usrBranchId = value; } }
        public string usrBranchName_ { get { return _usrBranchName; } set { _usrBranchName = value; } }
        public string usrBranchCity_ { get { return _usrBranchCity; } set { _usrBranchCity = value; } }
        public string usrBranchLocation_ { get { return _usrBranchLocation; } set { _usrBranchLocation = value; } }
        public string usrBranchAddress_ { get { return _usrBranchAddress; } set { _usrBranchAddress = value; } }
        public decimal usrBranchPincode_ { get { return _usrBranchPincode; } set { _usrBranchPincode = value; } }
        public string usrRole_ { get { return _usrRole; } set { _usrRole = value; } }
        public decimal usrSalary_ { get { return _usrSalary; } set { _usrSalary = value; } }
        public DateTime usrDoj_ { get { return _usrDoj; } set { _usrDoj = value; } }

  #endregion

        
        #region constructor

        public userEntity() { 
        }
        

        #endregion

    }
}

  