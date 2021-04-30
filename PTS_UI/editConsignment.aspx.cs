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

public partial class editConsignment : System.Web.UI.Page
{
    string consignmentIdd;
    protected void Page_Load(object sender, EventArgs e)
    {
        consignmentIdd = Session["consId"].ToString();
        string consId = string.Empty;
        string consTrackId = string.Empty;
        string consShipperName = string.Empty;
        string consShipperAddress = string.Empty;
        string consShipperMobile = string.Empty;
        string consShipperMail = string.Empty;
        string consMaterialDescription = string.Empty;
        string consTotalItems = string.Empty;
        string consTotalWeight = string.Empty;
        string consTotalDistance = string.Empty;
        string consServiceType = string.Empty;
        string consShippingCharge = string.Empty;
        string consDateOfBooking = string.Empty;
        string consSrcBranchId = string.Empty;
        string consSrcBranchName = string.Empty;
        string consSrcBranchCity = string.Empty;
        string consDestBranchId = string.Empty;
        string consDestBranchName = string.Empty;
        string consDestBranchCity = string.Empty;
        string consReceiverName = string.Empty;
        string consReceiverAddress = string.Empty;
        string consReceiverMobile = string.Empty;
        string consReceiverMail = string.Empty;
        string consBookedBy = string.Empty;
        mngEditConsBAL mngEditConsBALObj = new mngEditConsBAL();
        consId = mngEditConsBALObj.mngEditConsBALF(consignmentIdd, out consTrackId, out consShipperName, out consShipperAddress, out consShipperMobile, out consShipperMail, out consMaterialDescription, out consTotalItems, out consTotalWeight, out consTotalDistance, out consServiceType, out consShippingCharge, out consDateOfBooking, out consSrcBranchId, out consSrcBranchName, out consSrcBranchCity, out consDestBranchId, out consDestBranchName, out consDestBranchCity, out consReceiverName, out consReceiverAddress, out consReceiverMobile, out consReceiverMail, out consBookedBy);

        txtConsId.Text = consId;
        txtTrckId.Text = consTrackId;
        txtShrName.Text = consShipperName;
        txtShrAddress.Text = consShipperAddress;
        txtShrMobile.Text = consShipperMobile;
        txtShrEmail.Text = consShipperMail;
        txtMtrDesc.Text = consMaterialDescription;
        txtTotItems.Text = consTotalItems;
        txtTotWeight.Text = consTotalWeight;
        txtTotDist.Text = consTotalDistance;
        txtSrvType.Text = consServiceType;
        txtShpCharge.Text = consShippingCharge;
        txtDobook.Text = consDateOfBooking;
        txtSrcBrId.Text = consSrcBranchId;
        txtSrcBrName.Text = consSrcBranchName;
        txtSrcBrCity.Text = consSrcBranchCity;
        txtDestBrId.Text = consDestBranchId;
        txtDestBrName.Text = consDestBranchName;
        txtDestBrCity.Text = consDestBranchCity;
        txtRecName.Text = consReceiverName;
        txtRecAddress.Text = consReceiverAddress;
        txtRecMobile.Text = consReceiverMobile;
        txtRecEmail.Text = consReceiverMail;
        txtBookedBy.Text = consBookedBy;
    }
}