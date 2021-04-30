using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Access_Layer;
using PTS_Business_Entity;

public partial class viewEmployee : System.Web.UI.Page
{
    string userMail = string.Empty;
    string userType = string.Empty;
    string usrType = "Employee";
    protected void Page_Load(object sender, EventArgs e)
    {

        userMail = Session["email"].ToString();

        if (Session["email"] == null)
        {
            Response.Redirect("Sign In.aspx");
        }
        else
        {
            userType = Session["usrType"].ToString();

            if (String.Equals(userType, "Admin"))
            {
                adminEmpData();
            }

            if (String.Equals(userType, "Manager"))
            {
                mngEmpData();
            }

        }
    }

    public void adminEmpData()
    {
        userEntity userEntityObj = new userEntity();
        userEntityObj.usrType_ = usrType;
        viewEmpAdminBAL viewEmpAdminBALObj = new viewEmpAdminBAL();
        DataSet dsObj = viewEmpAdminBALObj.viewEmpAdminBALF(userEntityObj);
        GridView1.DataSource = dsObj;
        GridView1.DataBind();

    }

    public void mngEmpData()
    {
        string usrBranch = viewMngBranch();
        userEntity userEntityObj = new userEntity();
        userEntityObj.usrType_ = usrType;
        userEntityObj.usrBranchId_ = usrBranch;
        viewEmpAdminBAL viewEmpAdminBALObj = new viewEmpAdminBAL();
        DataSet dsObj = viewEmpAdminBALObj.viewEmpMngBALF(userEntityObj);
        GridView1.DataSource = dsObj;
        GridView1.DataBind();
        //Label1.Text = usrBranch;
    }

    public string viewMngBranch()
    {
        viewConsMngBAL viewConsMngBALObj = new viewConsMngBAL();
        string mngBranch = viewConsMngBALObj.viewConsMngMailBALF(userMail);
        return mngBranch;
    }

}