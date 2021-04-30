using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Access_Layer;


public partial class viewReceiver : System.Web.UI.Page
{
    string userMail = string.Empty;
    string userType = string.Empty;
    string userBranch = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] == null)
        {
            Response.Redirect("Sign In.aspx");
        }
        else
        {
            userMail = Session["email"].ToString();
            userType = Session["usrType"].ToString();

            if (String.Equals(userType, "Admin"))
            {
                adminRecData();
            }

            if (String.Equals(userType, "Manager") || String.Equals(userType, "Employee"))
            {
                
                mngEmpRecData();
            }

        }

    }

    public void adminRecData()
    {
        viewRecAdminBAL viewRecAdminBALObj = new viewRecAdminBAL();
        DataSet dsObj = viewRecAdminBALObj.viewRecAdminBALF();
        GridView1.DataSource = dsObj;
        GridView1.DataBind();
    }

    public void mngEmpRecData()
    {
        userBranch = viewMngBranch();
        viewRecMngEmpBAL viewRecMngEmpBALObj = new viewRecMngEmpBAL();
        DataSet dsObj = viewRecMngEmpBALObj.viewRecMngEmpBALF(userBranch);
        GridView1.DataSource = dsObj;
        GridView1.DataBind();
    }

    public string viewMngBranch()
    {
        viewConsMngBAL viewConsMngBALObj = new viewConsMngBAL();
        string mngBranch = viewConsMngBALObj.viewConsMngMailBALF(userMail);
        return mngBranch;
    }

}