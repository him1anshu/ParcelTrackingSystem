using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PTS_Business_Entity
{
    public class branchEntity
    {
        #region Field
        
        string _brBranchId;
        string _brBranchName;
        string _brBranchCity;
        string _brBranchLocation;
       string _brBranchAddress;
       decimal _brBranchPincode;
       string _brMngId;
       string _brMngPassword;
        string _brMngName;
        string _brMngEmail;
        decimal _brMngMobile;
       string _brMngAddress;
       decimal _brMngSalary;
       DateTime _brMngDoj;
       
      
   #endregion


   #region property

        
        public string brBranchId_ { get { return _brBranchId; } set { _brBranchId = value; } }
        public string brBranchName_ { get { return _brBranchName; } set { _brBranchName = value; } }
        public string brBranchCity_ { get { return _brBranchCity; } set { _brBranchCity = value; } }
        public string brBranchLocation_ { get { return _brBranchLocation; } set { _brBranchLocation = value; } }
        public string brBranchAddress_ { get { return _brBranchAddress; } set { _brBranchAddress = value; } }
        public decimal brBranchPincode_ { get { return _brBranchPincode; } set { _brBranchPincode = value; } }
        public string brMngId_ { get { return _brMngId; } set { _brMngId = value; } }
        public string brMngPassword_ { get { return _brMngPassword; } set { _brMngPassword = value; } }
        public string brMngName_ { get { return _brMngName; } set { _brMngName = value; } }
        public string brMngEmail_ { get { return _brMngEmail; } set { _brMngEmail = value; } }
        public decimal brMngMobile_ { get { return _brMngMobile; } set { _brMngMobile = value; } }
        public string brMngAddress_ { get { return _brMngAddress; } set { _brMngAddress = value; } }
        public decimal brMngSalary_ { get { return _brMngSalary; } set { _brMngSalary = value; } }
        public DateTime brMngDoj_ { get { return _brMngDoj; } set { _brMngDoj = value; } }
        


  #endregion


        
        #region constructor

        public branchEntity() { 
        }
        

        #endregion

    }
}
