using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

public partial class addDelivery : System.Web.UI.Page
{
    string empEmail = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }

        empEmail = Session["email"].ToString();
    }
    protected void btnConsSubmit_Click(object sender, EventArgs e)
    {
        deliveryEntity deliveryEntityObj = new deliveryEntity();

        deliveryEntityObj.delTrackId_ = txtTrckId.Text.Trim().ToUpper();
        deliveryEntityObj.delSourceBranchId_ = txtDelSrcBrId.Text.Trim().ToUpper();
        deliveryEntityObj.delSourceBranchName_ = txtDelSrcBrName.Text.Trim().ToUpper();
        deliveryEntityObj.delDateOfDel_ = Convert.ToDateTime(txtDelDateOfDel.Text.Trim());
        deliveryEntityObj.delCurrentBranchId_ = txtCrBrId.Text.Trim().ToUpper();
        deliveryEntityObj.delNextBranchId_ = txtNxtBrId.Text.Trim().ToUpper();
        deliveryEntityObj.delDateOfRec_ = Convert.ToDateTime(txtDelDateOfRec.Text.Trim());
        deliveryEntityObj.delDestnBranchId_ = txtDelDestBrId.Text.Trim().ToUpper();
        deliveryEntityObj.delDestnBranchName_ = txtDelDestBrName.Text.Trim().ToUpper();
        deliveryEntityObj.delExpDateOfDel_ = Convert.ToDateTime(txtExpDelDateOfDel.Text.Trim());
        deliveryEntityObj.delCurrentLocation_ = txtDelCrLoc.Text.Trim();
        deliveryEntityObj.delEmpMail_ = empEmail;
        //deliveryEntityObj.delStatus_ = Convert.ToBoolean(1);

        addDeliveryBAL addDeliveryBALObj = new addDeliveryBAL();
        addDeliveryBALObj.addDeliveryBALF(deliveryEntityObj);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("SignIn.aspx");

    }

}