using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

public partial class addEmployee : System.Web.UI.Page
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
        userEntityObj.usrName_ = txtEmpName.Text.Trim().ToUpper();
        userEntityObj.usrPassword_ = txtEmpPassword.Text.Trim();
        userEntityObj.usrEmail_ = txtEmpEmail.Text.Trim().ToUpper();
        userEntityObj.usrMobile_ = Convert.ToDecimal(txtEmpMobile.Text.Trim());
        userEntityObj.usrAddress_ = txtEmpAddress.Text.Trim().ToUpper();
        userEntityObj.usrType_ = "Employee";
        userEntityObj.usrId_ = "EMP" + txtEmpMobile.Text.Trim();
        userEntityObj.usrBranchId_ = txtBrId.Text.Trim().ToUpper();
        userEntityObj.usrBranchName_ = txtBrName.Text.Trim().ToUpper();
        userEntityObj.usrBranchLocation_ = txtBrLoc.Text.Trim().ToUpper();
        userEntityObj.usrBranchCity_ = txtBrCity.Text.Trim().ToUpper();
        userEntityObj.usrBranchAddress_ = txtBrAddress.Text.Trim().ToUpper();
        userEntityObj.usrBranchPincode_ = Convert.ToDecimal(txtBrPin.Text.Trim());
        userEntityObj.usrRole_ = txtEmpRole.Text.Trim().ToUpper();
        userEntityObj.usrSalary_ = Convert.ToDecimal(txtEmpSal.Text.Trim());
        userEntityObj.usrDoj_ = Convert.ToDateTime(txtEmpDojoin.Text);

        employeeRegistrationBAL employeeRegistrationBALObj = new employeeRegistrationBAL();
        employeeRegistrationBALObj.employeeRegBAL(userEntityObj);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("SignIn.aspx");

    }

}