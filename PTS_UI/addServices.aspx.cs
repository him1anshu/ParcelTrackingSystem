using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

public partial class addServices : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
    }
    protected void btnConsSubmit_Click(object sender, EventArgs e)
    {
        servicesEntity servicesEntityObj = new servicesEntity();

        servicesEntityObj.serviceType_ = txtSrType.Text.Trim().ToUpper();
        servicesEntityObj.costWeight_ = Convert.ToDecimal(txtSrCosWe.Text.Trim());
        servicesEntityObj.costDistance_=Convert.ToDecimal(txtSrCosDist.Text.Trim());
        servicesEntityObj.serviceId_ = txtSrType.Text.Trim().ToUpper().Substring(0, 1) + txtSrType.Text.Trim().ToUpper();

        addServicesBAL addServicesBALObj = new addServicesBAL();
        addServicesBALObj.addServiceBALF(servicesEntityObj);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("SignIn.aspx");

    }

}