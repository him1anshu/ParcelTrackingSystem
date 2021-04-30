using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {

        userEntity userEntityObj=new userEntity();

        userEntityObj.usrName_=txtUsrName.Text.Trim().ToUpper();
        userEntityObj.usrPassword_=txtUsrPassword.Text.Trim();
        userEntityObj.usrEmail_ = txtUsrEmail.Text.Trim().ToUpper();
        userEntityObj.usrMobile_=Convert.ToDecimal(txtUsrMobile.Text.Trim());
        userEntityObj.usrAddress_=txtUsrAddress.Text.Trim().ToUpper();
        userEntityObj.usrType_="User";
        userEntityObj.usrId_ = "USR"+txtUsrMobile.Text.Trim();

        userRegistrationBAL userRegistrationBALObj=new userRegistrationBAL();
        userRegistrationBALObj.newUserRegBAL(userEntityObj);
        }
    }
