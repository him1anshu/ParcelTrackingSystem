using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Access_Layer;

public partial class viewFeedback : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
       {
        if (Session["email"] == null)
        {
            Response.Redirect("Sign In.aspx");
        }
        else
        {
            adminFeedData();

        }
    }

    public void adminFeedData()
    {
        viewFeedAdminBAL viewFeedAdminBALObj = new viewFeedAdminBAL();
        DataSet dsObj = viewFeedAdminBALObj.viewFeedAdminBALF();
        GridView1.DataSource = dsObj;
        GridView1.DataBind();

    }

 }