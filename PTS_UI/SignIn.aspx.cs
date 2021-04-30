using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Access_Layer;
using PTS_Business_Entity;

public partial class SignIn : System.Web.UI.Page
{
    userEntity userEntityObj = new userEntity();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            if(String.Equals(userEntityObj.usrType_,"Admin"))
            {
                Response.Redirect("adminPanel.aspx");
            }
            else if (String.Equals(userEntityObj.usrType_, "Manager"))
            {
                Response.Redirect("managerPanel.aspx");
            }
            else if (String.Equals(userEntityObj.usrType_, "Employee"))
            {
                Response.Redirect("employeePanel.aspx");
            }
            else
            {
                Response.Redirect("userPanel.aspx");
            }
        }
    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {

        
        userEntityObj.usrEmail_ = txtUsrEmail.Text.Trim().ToUpper();
        userEntityObj.usrPassword_ = txtUsrPassword.Text.Trim();
        userEntityObj.usrType_ = drpUsrType.SelectedItem.ToString();

        userLoginBAL userLoginBALObj = new userLoginBAL();
        int usrCountUI = Convert.ToInt32(userLoginBALObj.userLoginFBAL(userEntityObj));
        if (usrCountUI == 1 && String.Equals(userEntityObj.usrType_,"Admin"))
        {
            Session["email"] = txtUsrEmail.Text.Trim().ToUpper();
            Session["usrType"] = "Admin";
            Response.Redirect("adminPanel.aspx");
        }
        else if (usrCountUI == 1 && String.Equals(userEntityObj.usrType_,"User"))
        {
            Session["email"] = txtUsrEmail.Text.Trim().ToUpper();
            Session["usrType"] = "User";
            Response.Redirect("userPanel.aspx");
        }
        else if (usrCountUI == 1 && String.Equals(userEntityObj.usrType_,"Manager"))
        {
            Session["email"] = txtUsrEmail.Text.Trim().ToUpper();
            Session["usrType"] = "Manager";
            Response.Redirect("managerPanel.aspx");
        }
        else if (usrCountUI == 1 && String.Equals(userEntityObj.usrType_, "Employee"))
        {
            Session["email"] = txtUsrEmail.Text.Trim().ToUpper();
            Session["usrType"] = "Employee";
            Response.Redirect("employeePanel.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }
}