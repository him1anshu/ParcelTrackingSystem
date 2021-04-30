using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Access_Layer;

public partial class viewDelivery : System.Web.UI.Page
{
    string srcBranch=string.Empty;
    string nxtBranch = string.Empty;
    string destBranch = string.Empty;
    string userBranch = string.Empty;
    string currntBranch = string.Empty;
    string userMail = string.Empty;
    string userType = string.Empty;
    string delId = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        viewDelEmpBAL viewDelEmpBALObj = new viewDelEmpBAL();
        srcBranch = viewDelEmpBALObj.viewDelEmpCondBALF(out nxtBranch,out  destBranch,out currntBranch);
       
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
                mngDelData();
            }

            if (String.Equals(userType, "Manager"))
            {
                userBranch = viewMngBranch();
                if(string.Equals(userBranch,srcBranch) || string.Equals(userBranch,nxtBranch) || string.Equals(userBranch,destBranch))
                {
                mngDelData();
                }
            }

             if (String.Equals(userType, "Employee"))
            {
                userBranch = viewMngBranch();
                if (string.Equals(userBranch, srcBranch) || string.Equals(userBranch, nxtBranch) || string.Equals(userBranch, destBranch))
                {
                    mngDelData();
                }
            }
        }
    }


        public void mngDelData()
        {
            viewDelEmpBAL viewDelEmpBALObj = new viewDelEmpBAL();
            DataSet dsObj = viewDelEmpBALObj.viewDelEmpBALF();
            GridView1.DataSource = dsObj;
            GridView1.DataBind();

        }


        public string viewMngBranch()
        {
            viewConsMngBAL viewConsMngBALObj = new viewConsMngBAL();
            string mngBranch = viewConsMngBALObj.viewConsMngMailBALF(userMail);
            return mngBranch;
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (string.Equals(userBranch, nxtBranch))
            {

                delId = Convert.ToString((sender as LinkButton).CommandArgument);
                Session["delId"] = delId;
                Session["nextBranch"] = nxtBranch;
                Session["destBranch"] = destBranch;
                Session["currentBranch"] = currntBranch;
                Response.Redirect("editDelivery.aspx");
            }
            else
            {
                Label1.Text = "You do not have permission to edit.";
                Label1.Visible = true;
            }
            
        }

}
