using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Access_Layer;


public partial class viewConsignment : System.Web.UI.Page
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
            if(String.Equals(userType,"User"))
            {
            userConsData();
            }
            if (String.Equals(userType, "Admin"))
            {
                adminConsData();
            }

            if (String.Equals(userType, "Manager"))
            {
                userBranch = viewMngBranch();
                mngConsData();
            }

            if (String.Equals(userType, "Employee"))
            {
                userBranch = viewMngBranch();
                mngConsData();
            }
        }
    }

        public void userConsData()
        {
            viewConsignmentUserBAL viewConsignmentUserBALObj = new viewConsignmentUserBAL();
            DataSet dsObj= viewConsignmentUserBALObj.viewConsUserBALF(userBranch);
            GridView1.DataSource = dsObj;
            GridView1.DataBind();

        }

        public void mngConsData()
        {
            viewConsMngBAL viewConsMngBALObj = new viewConsMngBAL();
            DataSet dsObj = viewConsMngBALObj.viewConsMngBALF(userBranch);
            GridView1.DataSource = dsObj;
            GridView1.DataBind();

        }

        public void adminConsData()
        {
            viewConsAdminBAL viewConsAdminBALObj = new viewConsAdminBAL();
            DataSet dsObj = viewConsAdminBALObj.viewConsAdminBALF();
            GridView1.DataSource = dsObj;
            GridView1.DataBind();

        }

       public string viewMngBranch()
       {
           viewConsMngBAL viewConsMngBALObj = new viewConsMngBAL();
           string mngBranch = viewConsMngBALObj.viewConsMngMailBALF(userMail);
           return mngBranch;
       }

       protected void editConsignment(object sender, EventArgs e)
       {
           if (String.Equals(userType, "Manager"))
           {
               consId = Convert.ToString((sender as LinkButton).CommandArgument);
               Session["consId"] = consId;
               Response.Redirect("editConsignment.aspx");
           }
           else
           {
               Label1.Text = "You do not have permission to edit.";
               Label1.Visible = true;
           }
          
       }
}
