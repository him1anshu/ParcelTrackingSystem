using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Access_Layer;
using PTS_Business_Entity;

public partial class viewManager : System.Web.UI.Page
{
    string userType = string.Empty;
    string usrType = "Manager";
    protected void Page_Load(object sender, EventArgs e)
    {
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
}