using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Access_Layer;

public partial class tracking : System.Web.UI.Page
{
    string trckId = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmitTrck_Click(object sender, EventArgs e)
    {
        trckId = txttrckno.Text.Trim().ToString();
        trackingBAL trackingBALObj = new trackingBAL();
         int trckCountCons = Convert.ToInt32(trackingBALObj.trackingCountConsBALF(trckId));
        int trckCountDel = Convert.ToInt32(trackingBALObj.trackingCountBALF(trckId));
        if(trckCountCons==1 && trckCountDel==1)
        {
        string currentLocation = trackingBALObj.trackingBALF(trckId);
        txtResult.Text = currentLocation;
        txtResult.Visible = true;
        }
        else if (trckCountCons == 1 && trckCountDel == 0)
        {
            txtResult.Text = "Consignment booked and will be delivered soon.";
            txtResult.Visible = true;
        }
        else
        {
            txtResult.Text="Invalid tracking Id";
            txtResult.Visible = true;
        }

    }
}