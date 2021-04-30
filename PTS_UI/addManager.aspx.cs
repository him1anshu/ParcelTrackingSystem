using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

public partial class addManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
    }
    protected void btnConsSubmit_Click(object sender, EventArgs e)
    {
        userEntity userEntityObj = new userEntity();

        userEntityObj.usrName_ = txtMngName.Text.Trim().ToUpper();
        userEntityObj.usrPassword_ = txtMngPassword.Text.Trim();
        userEntityObj.usrEmail_ = txtMngEmail.Text.Trim().ToUpper();
        userEntityObj.usrMobile_ = Convert.ToDecimal(txtMngMobile.Text.Trim());
        userEntityObj.usrAddress_ = txtMngAddress.Text.Trim().ToUpper();
        userEntityObj.usrType_ = "Manager";
        userEntityObj.usrId_ = "MNG" + txtMngMobile.Text.Trim();
        userEntityObj.usrBranchId_ = txtBrId.Text.Trim().ToUpper();
        userEntityObj.usrBranchName_ = txtBrName.Text.Trim().ToUpper();
        userEntityObj.usrBranchCity_ = txtBrCity.Text.Trim().ToUpper();
        userEntityObj.usrBranchLocation_ = txtBrLoc.Text.Trim().ToUpper();
        userEntityObj.usrBranchAddress_ = txtBrAddress.Text.Trim().ToUpper();
        userEntityObj.usrBranchPincode_ = Convert.ToDecimal(txtBrPin.Text.Trim());
        userEntityObj.usrSalary_ = Convert.ToDecimal(txtMngSal.Text.Trim());
        userEntityObj.usrDoj_ =Convert.ToDateTime(txtMngDojoin.Text);

        branchEntity branchEntityObj = new branchEntity();

        branchEntityObj.brMngName_ = txtMngName.Text.Trim().ToUpper();
        branchEntityObj.brMngPassword_ = txtMngPassword.Text.Trim();
        branchEntityObj.brMngEmail_ = txtMngEmail.Text.Trim().ToUpper();
        branchEntityObj.brMngMobile_ = Convert.ToDecimal(txtMngMobile.Text.Trim());
        branchEntityObj.brMngAddress_ = txtMngAddress.Text.Trim().ToUpper();
        branchEntityObj.brMngId_ = "MNG" + txtMngMobile.Text.Trim();
        branchEntityObj.brBranchId_ = txtBrId.Text.Trim().ToUpper();
        branchEntityObj.brBranchName_ = txtBrName.Text.Trim().ToUpper();
        branchEntityObj.brBranchCity_ = txtBrCity.Text.Trim().ToUpper();
        branchEntityObj.brBranchLocation_ = txtBrLoc.Text.Trim().ToUpper();
        branchEntityObj.brBranchAddress_ = txtBrAddress.Text.Trim().ToUpper();
        branchEntityObj.brBranchPincode_ = Convert.ToDecimal(txtBrPin.Text.Trim());
        branchEntityObj.brMngSalary_ = Convert.ToDecimal(txtMngSal.Text.Trim());
        branchEntityObj.brMngDoj_ = Convert.ToDateTime(txtMngDojoin.Text);

        managerRegistrationBAL managerRegistrationBALObj = new managerRegistrationBAL();
        managerRegistrationBALObj.managerRegBAL(userEntityObj);

        managerRegistrationBALObj.branchRegBAL(branchEntityObj);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("SignIn.aspx");

    }

}