using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using PTS_Business_Access_Layer;
using PTS_Business_Entity;

public partial class editDelivery : System.Web.UI.Page
{
    string deliveryIdd=string.Empty;
    string empEmail = string.Empty;
    string nextBranch = string.Empty;
    string destBranch = string.Empty;
    string currentBranch = string.Empty;
   
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["email"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }

        empEmail = Session["email"].ToString();

        deliveryIdd = Session["delId"].ToString();
         nextBranch= Session["nextBranch"].ToString() ;
         destBranch=Session["destBranch"].ToString() ;
         currentBranch=Session["currentBranch"].ToString();
       

    }
     
    protected void btnConsSubmit_Click(object sender, EventArgs e)
    {
        deliveryEntity deliveryEntityObj = new deliveryEntity();

        deliveryEntityObj.delTrackId_ = txtTrckId.Text.Trim().ToUpper();
        //deliveryEntityObj.delSourceBranchId_ = txtDelSrcBrId.Text.Trim().ToUpper();
        //deliveryEntityObj.delSourceBranchName_ = txtDelSrcBrName.Text.Trim().ToUpper();
        deliveryEntityObj.delDateOfDel_ = Convert.ToDateTime(txtDelDateOfDel.Text.Trim());
        deliveryEntityObj.delCurrentBranchId_ = txtCrBrId.Text.Trim().ToUpper();
        deliveryEntityObj.delNextBranchId_ = txtNxtBrId.Text.Trim().ToUpper();
        deliveryEntityObj.delDateOfRec_ = Convert.ToDateTime(txtDelDateOfRec.Text.Trim());
        //deliveryEntityObj.delDestnBranchId_ = txtDelDestBrId.Text.Trim().ToUpper();
        //deliveryEntityObj.delDestnBranchName_ = txtDelDestBrName.Text.Trim().ToUpper();
        deliveryEntityObj.delExpDateOfDel_ = Convert.ToDateTime(txtExpDelDateOfDel.Text.Trim());
        deliveryEntityObj.delCurrentLocation_ = txtDelCrLoc.Text.Trim();
        deliveryEntityObj.delEmpMail_ = empEmail;

        if(String.Equals(currentBranch,destBranch))
        {
            deliveryEntityObj.delStatus_ = Convert.ToBoolean(true);
            consignmentEntity consignmentEntityObj = new consignmentEntity();
            consignmentEntityObj.consDelStatus_ = deliveryEntityObj.delStatus_;
            string trackId = txtTrckId.Text.Trim().ToUpper();
            consDelStatusBAL consDelStatusBALObj = new consDelStatusBAL();
            consDelStatusBALObj.consDelStatusBALF(consignmentEntityObj, trackId);
        }

        empEditDeliveryBAL empEditDeliveryBALObj = new empEditDeliveryBAL();
        empEditDeliveryBALObj.empEditDeliveryBALF(deliveryEntityObj);

        Response.Redirect("viewDelivery.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("SignIn.aspx");

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        string delId = string.Empty;
        string delTrackId = string.Empty;
        string delSourceBranchId = string.Empty;
        string delSourceBranchName = string.Empty;
        string delEmpMail = string.Empty;
        string delDateOfDel = string.Empty;
        string delCurrentBranchId = string.Empty;
        string delNextBranchId = string.Empty;
        string delDateOfRec = string.Empty;
        string delDestnBranchId = string.Empty;
        string delDestnBranchName = string.Empty;
        string delExpDateOfDel = string.Empty;
        string delCurrentLocation = string.Empty;
        string delStatus = string.Empty;
        empEditDelBAL empEditDelBALObj = new empEditDelBAL();
        delId = empEditDelBALObj.empEditDelBALF(deliveryIdd, out delTrackId, out delSourceBranchId, out delSourceBranchName, out delEmpMail, out delDateOfDel, out delCurrentBranchId, out delNextBranchId, out delDateOfRec, out delDestnBranchId, out delDestnBranchName, out delExpDateOfDel, out delCurrentLocation, out delStatus);

        txtTrckId.Text = delTrackId;
        txtDelSrcBrId.Text = delSourceBranchId;
        txtDelSrcBrName.Text = delSourceBranchName;
        txtDelEmpMail.Text = delEmpMail;
        txtDelDateOfDel.Text = delDateOfDel;
        txtCrBrId.Text = delCurrentBranchId;
        txtNxtBrId.Text = delNextBranchId;
        txtDelDateOfRec.Text = delDateOfRec;
        txtDelDestBrId.Text = delDestnBranchId;
        txtDelDestBrName.Text = delDestnBranchName;
        txtExpDelDateOfDel.Text = delExpDateOfDel;
        txtDelCrLoc.Text = delCurrentLocation;
        txtDelStatus.Text = delStatus;
    }
}