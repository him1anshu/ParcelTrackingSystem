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


public partial class addConsignment : System.Web.UI.Page
{
    static int idIncrementCons = 0;
    static int idIncrementTrck = 0;
    const double PIx = 3.141592653589793;
    const double RADIO = 6378.16;
    string consBookEmail=string.Empty;
    string consBookUsr=string.Empty;
    addConsignmentBAL addConsignmentBALObj = new addConsignmentBAL();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }

        consBookEmail = Session["email"].ToString();
        consBookUsr = Session["usrType"].ToString();
        if (!IsPostBack)
        {
            addConsignmentBAL addConsignmentBALObj = new addConsignmentBAL();
            drpSrType.DataSource = addConsignmentBALObj.addServicesEmpBALF();
            drpSrType.DataValueField = "serviceType";
            drpSrType.DataTextField = "serviceType";
            drpSrType.DataBind();

            drpSrcBrId.DataSource = addConsignmentBALObj.addBranchConsEmpBALF();
            drpSrcBrId.DataValueField = "brBranchId";
            drpSrcBrId.DataTextField = "brBranchId";
            drpSrcBrId.DataBind();

            drpDestBrId.DataSource = addConsignmentBALObj.addBranchConsEmpBALF();
            drpDestBrId.DataValueField = "brBranchId";
            drpDestBrId.DataTextField = "brBranchId";
            drpDestBrId.DataBind();
        }
    }
    protected void btnConsSubmit_Click(object sender, EventArgs e)
    {

        consignmentEntity consignmentEntityObj = new consignmentEntity();

        consignmentEntityObj.consShipperName_ = txtShrName.Text.Trim().ToUpper();
        consignmentEntityObj.consShipperMobile_ = Convert.ToDecimal(txtShrMobile.Text.Trim());
        consignmentEntityObj.consShipperMail_ = txtShrEmail.Text.Trim().ToUpper();
        consignmentEntityObj.consShipperAddress_ = txtShrAddress.Text.Trim().ToUpper();
        consignmentEntityObj.consMaterialDescription_ = txtMtrDesc.Text.Trim().ToUpper();
        consignmentEntityObj.consTotalItems_ = Convert.ToDecimal(txtTotItems.Text.Trim());
        consignmentEntityObj.consTotalWeight_ = Convert.ToDecimal(txtTotWeight.Text.Trim());
        consignmentEntityObj.consTotalDistance_ = Convert.ToDecimal(txtTotDist.Text.Trim());
        consignmentEntityObj.consServiceType_ = drpSrType.Text.ToUpper();
        consignmentEntityObj.consShippingCharge_ = Convert.ToDecimal(txtShpCharge.Text.Trim());
        consignmentEntityObj.consDateOfBooking_ = Convert.ToDateTime(txtDobook.Text.Trim());
        consignmentEntityObj.consSrcBranchId_ = drpSrcBrId.Text.Trim().ToUpper();
        consignmentEntityObj.consSrcBranchName_ = txtSrcBrName.Text.Trim().ToUpper();
        consignmentEntityObj.consSrcBranchCity_ = txtSrcBrCity.Text.Trim().ToUpper();
        consignmentEntityObj.consDestBranchId_ = drpDestBrId.Text.Trim().ToUpper();
        consignmentEntityObj.consDestBranchName_ = txtDestBrName.Text.Trim().ToUpper();
        consignmentEntityObj.consDestBranchCity_ = txtDestBrCity.Text.Trim().ToUpper();
        consignmentEntityObj.consReceiverName_ = txtRecName.Text.Trim().ToUpper();
        consignmentEntityObj.consReceiverMobile_ = Convert.ToDecimal(txtRecMobile.Text.Trim());
        consignmentEntityObj.consReceiverMail_ = txtRecEmail.Text.Trim().ToUpper();
        consignmentEntityObj.consReceiverAddress_ = txtRecAddress.Text.Trim().ToUpper();
        if (String.Equals(consBookUsr, "Employee"))
        {
            consignmentEntityObj.consBookedBy_ = consBookEmail;
        }
        else
        {
            consignmentEntityObj.consBookedBy_ = "User"+consBookEmail;
        }

        idIncrementCons++;
        idIncrementTrck++;
        consignmentEntityObj.consId_ = "CONSEMPID" + Convert.ToString(idIncrementCons);
        consignmentEntityObj.consTrackId_ = "TRCKEMPID" + Convert.ToString(idIncrementTrck);

        addConsignmentBAL addConsignmentBALObj = new addConsignmentBAL();
        addConsignmentBALObj.addConsignmentBALF(consignmentEntityObj);

        string trckId;
        string shrMailUI = addConsignmentBALObj.consShrMailBALF(consignmentEntityObj,out trckId);
        string message="Your Consignment has been booked Successfully.Your tracking id is :"+trckId+"Thankyou for using our service.";


        MailMessage mail = new MailMessage("parcel01tracking@gmail.com", shrMailUI, "Consignment Booked Successfully", message);
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

        txtDestBrCity.Text= "";
        drpDestBrId.Text = "";
        txtDestBrName.Text = "";
        txtDobook.Text = "";
        txtMtrDesc.Text = "";
        txtRecAddress.Text = "";
        txtRecEmail.Text = "";
        txtRecMobile.Text = "";
        txtRecName.Text = "";
        txtShpCharge.Text = "";
        txtShrAddress.Text = "";
        txtShrEmail.Text = "";
        txtShrMobile.Text = "";
        txtShrName.Text = "";
        txtSrcBrCity.Text = "";
        drpSrcBrId.Text = "";
        txtSrcBrName.Text = "";
        txtTotDist.Text = "";
        txtTotItems.Text ="";
        txtTotWeight.Text = "";
        

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("SignIn.aspx");

    }



    public static double Radians(double x)
    {
        return x * PIx / 180;
    }

    public static double DistanceBetweenPlaces(double lon1, double lat1, double lon2, double lat2)
    {
        double dlon = Radians(lon2 - lon1);
        double dlat = Radians(lat2 - lat1);

        double a = (Math.Sin(dlat / 2) * Math.Sin(dlat / 2)) + Math.Cos(Radians(lat1)) * Math.Cos(Radians(lat2)) * (Math.Sin(dlon / 2) * Math.Sin(dlon / 2));
        double angle = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));
        return (angle * RADIO) * 0.62137;//distance in miles
    }



    protected void btnCalcDist_Click(object sender, EventArgs e)
    {
       
        string srcBrLong;
        cityEntity cityEntityObj = new cityEntity();
        cityEntityObj.cityName_ = txtSrcBrCity.Text.Trim().ToUpper();


        string srcBrLat = addConsignmentBALObj.consCityBALF(cityEntityObj, out srcBrLong);
        double srLatitude = Convert.ToDouble(srcBrLat);
        double srLongitude = Convert.ToDouble(srcBrLong);

        string destBrLong;
        cityEntityObj.cityName_ = txtDestBrCity.Text.Trim().ToUpper();

        string destBrLat = addConsignmentBALObj.consCityBALF1(cityEntityObj, out destBrLong);
        double dsLatitude = Convert.ToDouble(destBrLat);
        double dsLongitude = Convert.ToDouble(destBrLong);

        double distance=DistanceBetweenPlaces(srLongitude, srLatitude, dsLongitude, dsLatitude);
        txtTotDist.Text = Convert.ToString(distance);

        //txtShpCharge.Text=(txtTotWeight.Text)

        string costAccDist;
        servicesEntity servicesEntityObj = new servicesEntity();
        servicesEntityObj.serviceType_ = drpSrType.Text.Trim().ToUpper();

        string costAccWeight = addConsignmentBALObj.consServiceCostBALF(servicesEntityObj,out costAccDist);

        //Label1.Text = "hello"+costAccWeight;

        double servCostAccWeight=Convert.ToDouble(costAccWeight);
        double servCostAccDist = Convert.ToDouble(costAccDist);

        double totWeightC=Convert.ToDouble(txtTotWeight.Text.Trim());

        txtShpCharge.Text = Convert.ToString(costCalculationF(servCostAccWeight,servCostAccDist,distance,totWeightC));
    }

    public double costCalculationF(double servAcWeight,double servAcDist,double totDistance,double totWeight)
    {

        double result = (servAcWeight * totWeight) + (servAcDist * totDistance);

        return result;

    }

    protected void drpSrcBrId_SelectedIndexChanged(object sender, EventArgs e)
    {
        string brCity=string.Empty;
        string brId=drpSrcBrId.Text.Trim();

        string brName = addConsignmentBALObj.addBrConsEmpBALF(brId,out brCity);

        txtSrcBrName.Text=brName;
        txtSrcBrCity.Text = brCity;
        
    }
    protected void drpDestBrId_SelectedIndexChanged(object sender, EventArgs e)
    {
        string brCity = string.Empty;
        string brId = drpDestBrId.Text.Trim();

        string brName = addConsignmentBALObj.addBrConsEmpBALF(brId, out brCity);

        txtDestBrName.Text = brName;
        txtDestBrCity.Text = brCity;
    }
}