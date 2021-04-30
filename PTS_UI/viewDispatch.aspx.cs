using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Access_Layer;

public partial class viewDispatch : System.Web.UI.Page
{
    string userMail=string.Empty;
    string userType = string.Empty;
    string userBranch = string.Empty;
    string consId = string.Empty;
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
                adminDisData();
            }

            if (String.Equals(userType, "Manager"))
            {
                userBranch = viewMngBranch();
                mngDisData();
            }

            if (String.Equals(userType, "Employee"))
            {
                userBranch = viewMngBranch();
                mngDisData();
            }
        }
    }


        public void mngDisData()
        {
            viewDisMngEmpBAL viewDisMngEmpBALObj = new viewDisMngEmpBAL();
            DataSet dsObj = viewDisMngEmpBALObj.viewDisMngEmpBALF(userBranch);
            GridView1.DataSource = dsObj;
            GridView1.DataBind();

        }

        public void adminDisData()
        {
            viewDisAdminBAL viewDisAdminBALObj = new viewDisAdminBAL();
            DataSet dsObj = viewDisAdminBALObj.viewDisAdminBALF();
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