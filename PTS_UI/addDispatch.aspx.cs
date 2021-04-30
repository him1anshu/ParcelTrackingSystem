using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

using System.Net;
using System.Net.Mail;
using System.Text;

public partial class addDispatch : System.Web.UI.Page
{
    string trckId = String.Empty;
    addDispEmpBAL addDispEmpBALObj = new addDispEmpBAL();
    consignmentEntity consignmentEntityObj = new consignmentEntity();
    dispatchEntity dispatchEntityObj = new dispatchEntity();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }

    }
    protected void btnConsSubmit_Click(object sender, EventArgs e)
    {
     

        dispatchEntityObj.disTrackId_ = txtTrckId.Text.Trim().ToUpper();
        dispatchEntityObj.disEmpId_ = txtDisEmpId.Text.Trim().ToUpper();
        dispatchEntityObj.disEmpName_ = txtDisEmpName.Text.Trim().ToUpper();
        dispatchEntityObj.disEmpMobile_ = Convert.ToDecimal(txtDisEmpMobile.Text.Trim());
        dispatchEntityObj.disBranchId_ = txtDisBrId.Text.Trim().ToUpper();
        dispatchEntityObj.disBranchName_ = txtDisBrName.Text.Trim().ToUpper();
        dispatchEntityObj.disShipperName_ = txtDisShrName.Text.Trim();
        dispatchEntityObj.disShipperMail_ = txtDisShrMail.Text.Trim().ToUpper();
        dispatchEntityObj.disShipperPhone_ = Convert.ToDecimal(txtDisShrMobile.Text.Trim());
        dispatchEntityObj.disShipperAddress_ = txtDisShrAddress.Text.Trim();
        dispatchEntityObj.disReceiverName_ = txtDisRecName.Text.Trim();
        dispatchEntityObj.disReceiverMail_ = txtDisRecMail.Text.Trim().ToUpper();
        dispatchEntityObj.disReceiverPhone_ = Convert.ToDecimal(txtDisRecMobile.Text.Trim());
        dispatchEntityObj.disReceiverAddress_ = txtDisRecAddress.Text.Trim();
        dispatchEntityObj.disDateOfDis_ = Convert.ToDateTime(txtDisDateOfDis.Text.Trim());
        dispatchEntityObj.disBookedBy_ = Session["email"].ToString().ToUpper();
        dispatchEntityObj.disStatus_ = Convert.ToBoolean(txtDisStatus.Text.Trim());
        consignmentEntityObj.consDisStatus_ =Convert.ToBoolean(txtDisStatus.Text.Trim());

        addDispatchBAL addDispatchBALObj = new addDispatchBAL();
        addDispatchBALObj.addDispatchBALF(dispatchEntityObj);

        string trackId=txtTrckId.Text.Trim().ToUpper();
        consDisStatusBAL consDisStatusBALObj = new consDisStatusBAL();
        consDisStatusBALObj.consDisStatusBALF(consignmentEntityObj, trackId);

        recMailDisBAL recMailDisBALObj=new recMailDisBAL();
        string recMail = recMailDisBALObj.recMailDisBALF(trackId);

        string message = "Your Consignment has been dispatched.You can contact to : Mr " + txtDisEmpName.Text.Trim().ToUpper() + ". Contact NO. : " + txtDisEmpMobile.Text.Trim() + "Thankyou for using our service.";


        MailMessage mail = new MailMessage("parcel01tracking@gmail.com", recMail, "Consignment Dispatched Successfully", message);
        SmtpClient client = new SmtpClient();
        client.Port = 587;
        client.Host = "smtp.gmail.com";

        client.Timeout = 10000;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.UseDefaultCredentials = false;
        client.Credentials = new System.Net.NetworkCredential("parcel01tracking@gmail.com", "Parcel@12345");
        client.EnableSsl = true;

        mail.BodyEncoding = UTF8Encoding.UTF8;
        mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
        client.Send(mail);

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("SignIn.aspx");

    }


    protected void btnLoad_Click(object sender, EventArgs e)
    {
        string consShipperMobile = string.Empty;
        string consShipperAddress = string.Empty;
        string consReceiverName = string.Empty;
        string consReceiverMobile = string.Empty;
        string consReceiverAddress = string.Empty;
        string consShipperMail= string.Empty;
        string consReceiverMail = string.Empty;

        trckId = txtTrckId.Text.Trim();

        string consShipperName = addDispEmpBALObj.addDispEmpBALF(trckId, out consShipperMobile, out consShipperAddress, out consReceiverName, out consReceiverMobile, out consReceiverAddress,out consShipperMail,out consReceiverMail);

        txtDisShrName.Text = consShipperName;
        txtDisShrMail.Text = consShipperMail;
        txtDisShrMobile.Text= consShipperMobile;
        txtDisShrAddress.Text= consShipperAddress;
        txtDisRecName.Text= consReceiverName;
        txtDisRecMail.Text = consReceiverMail;
        txtDisRecMobile.Text= consReceiverMobile;
        txtDisRecAddress.Text = consReceiverAddress;
        dispatchEntityObj.disBranchId_ = txtDisBrId.Text.Trim().ToUpper();
        dispatchEntityObj.disBranchName_ = txtDisBrName.Text.Trim();
    }
}