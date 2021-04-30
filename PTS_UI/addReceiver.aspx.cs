using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

public partial class addReceiver : System.Web.UI.Page
{
    string trckId = String.Empty;
    consignmentEntity consignmentEntityObj = new consignmentEntity();
    receiverEntity receiverEntityObj = new receiverEntity();
    addRecEmpBAL addRecEmpBALObj = new addRecEmpBAL();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
    }
    protected void btnConsSubmit_click(object sender, EventArgs e)
    {
        receiverEntityObj.recTrackId_ = txtRecTrckId.Text.Trim().ToUpper();
        receiverEntityObj.recSourceBranchId_ = txtRecSrcBrId.Text.Trim().ToUpper();
        receiverEntityObj.recDestBranchId_ = txtRecDestBrId.Text.Trim().ToUpper();
        receiverEntityObj.recReceiverName_ = txtRecRecName.Text.Trim().ToUpper();
        receiverEntityObj.recReceiverPhone_ = Convert.ToDecimal(txtRecRecMobile.Text.Trim());
        receiverEntityObj.recTotalItems_ = Convert.ToDecimal(txtRecTotItems.Text.Trim());
        receiverEntityObj.recMaterialDesc_ = txtRecMtrDesc.Text.Trim().ToUpper();
        receiverEntityObj.recDateOfRec_ = Convert.ToDateTime(txtRecDobook.Text.Trim());
        receiverEntityObj.recStatus_ = Convert.ToBoolean(txtRecStatus.Text.Trim());
        consignmentEntityObj.consRecStatus_ = Convert.ToBoolean(txtRecStatus.Text.Trim());

        addReceiverBAL addReceiverBALObj = new addReceiverBAL();
        addReceiverBALObj.addReceiverBALF(receiverEntityObj);

        string trackId = txtRecTrckId.Text.Trim().ToUpper();
        consRecStatusBAL consRecStatusBALObj = new consRecStatusBAL();
        consRecStatusBALObj.consRecStatusBALF(consignmentEntityObj, trackId);

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("SignIn.aspx");

    }

    protected void btnLoad_Click(object sender, EventArgs e)
    {
        string consDestBranchId = string.Empty;
        string consReceiverName = string.Empty;
        string consReceiverPhone = string.Empty;
        string consTotalItems = string.Empty;
        string consMaterialDesc = string.Empty;

        trckId = txtRecTrckId.Text.Trim().ToUpper();
        string consSourceBranchId=addRecEmpBALObj.addRecEmpBALF(trckId,out consDestBranchId,out consReceiverName,out consReceiverPhone,out consTotalItems,out consMaterialDesc );

        txtRecSrcBrId.Text=consSourceBranchId;
        txtRecDestBrId.Text=consDestBranchId;
        txtRecRecName.Text=consReceiverName;
        txtRecRecMobile.Text=consReceiverPhone;
        txtRecTotItems.Text=consTotalItems;
        txtRecMtrDesc.Text=consMaterialDesc;
        
    }

}