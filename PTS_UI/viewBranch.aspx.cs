using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Access_Layer;

public partial class viewBranch : System.Web.UI.Page
{
       protected void Page_Load(object sender, EventArgs e)
       {
        if (Session["email"] == null)
        {
            Response.Redirect("Sign In.aspx");
        }
        else
        {
            userConsData();

        }
    }

    public void userConsData()
    {
        viewBrnAdminBAL viewBrnAdminBALObj = new viewBrnAdminBAL();
        DataSet dsObj = viewBrnAdminBALObj.viewBrnAdminBALF();
        GridView1.DataSource = dsObj;
        GridView1.DataBind();

    }

}