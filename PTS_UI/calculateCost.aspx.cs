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

public partial class calculatingCost : System.Web.UI.Page
{
    const double PIx = 3.141592653589793;
    const double RADIO = 6378.16;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            addConsignmentBAL addConsignmentBALObj = new addConsignmentBAL();
            drpSrType.DataSource = addConsignmentBALObj.addServicesEmpBALF();
            drpSrType.DataValueField = "serviceType";
            drpSrType.DataTextField = "serviceType";
            drpSrType.DataBind();

            calculateCostBAL calculateCostBALObj = new calculateCostBAL();
            drpSrcCity.DataSource = calculateCostBALObj.calculateCostCityBALF();
            drpSrcCity.DataValueField = "cityName";
            drpSrcCity.DataTextField = "cityName";
            drpSrcCity.DataBind();

            drpDestCity.DataSource = calculateCostBALObj.calculateCostCityBALF();
            drpDestCity.DataValueField = "cityName";
            drpDestCity.DataTextField = "cityName";
            drpDestCity.DataBind();
        }    
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



    protected void btn_Click(object sender, EventArgs e)
    {
        addConsignmentBAL addConsignmentBALObj = new addConsignmentBAL();
        string srcBrLong;
        cityEntity cityEntityObj = new cityEntity();
        cityEntityObj.cityName_ = drpSrcCity.Text.Trim().ToUpper();


        string srcBrLat = addConsignmentBALObj.consCityBALF(cityEntityObj, out srcBrLong);
        double srLatitude = Convert.ToDouble(srcBrLat);
        double srLongitude = Convert.ToDouble(srcBrLong);

        string destBrLong;
        cityEntityObj.cityName_ = drpDestCity.Text.Trim().ToUpper();

        string destBrLat = addConsignmentBALObj.consCityBALF1(cityEntityObj, out destBrLong);
        double dsLatitude = Convert.ToDouble(destBrLat);
        double dsLongitude = Convert.ToDouble(destBrLong);

        double distance = DistanceBetweenPlaces(srLongitude, srLatitude, dsLongitude, dsLatitude);
        //txtTotDist.Text = Convert.ToString(distance);

        string costAccDist;
        servicesEntity servicesEntityObj = new servicesEntity();
        servicesEntityObj.serviceType_ = drpSrType.Text;

        string costAccWeight = addConsignmentBALObj.consServiceCostBALF(servicesEntityObj, out costAccDist);

        double servCostAccWeight = Convert.ToDouble(costAccWeight);
        double servCostAccDist = Convert.ToDouble(costAccDist);

        double totWeightC = Convert.ToDouble(txtTotWeight.Text.Trim());

         txtShpCharge.Text= Convert.ToString(costCalculationF(servCostAccWeight, servCostAccDist, distance, totWeightC));
         Label2.Visible = true;
         txtShpCharge.Visible = true;
         
    }

    public double costCalculationF(double servAcWeight, double servAcDist, double totDistance, double totWeight)
    {

        double result = (servAcWeight * totWeight) + (servAcDist * totDistance);

        return result;

    }

}