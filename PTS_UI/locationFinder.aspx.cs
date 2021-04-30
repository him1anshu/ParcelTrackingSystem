using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

public partial class locationFinder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 

    }
    protected void btnSubmitLF1_Click(object sender, EventArgs e)
    {

        Label1.Visible = false;
        branchEntity branchEntityObj = new branchEntity();

        branchEntityObj.brBranchCity_ = txtCityNameLF.Text.Trim().ToUpper();

        locationFinderBAL locationFinderBALObj = new locationFinderBAL();
        int locResUI=locationFinderBALObj.locationFinderBALF(branchEntityObj);

        if (locResUI >= 1)
        {
            
            DataSet dsObj = locationFinderBALObj.locFinderBALF(branchEntityObj);
            GridView1.DataSource = dsObj;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
        else
        {
            Label1.Visible = true;
        }

    }
    protected void btnSubmitLF_Click(object sender, EventArgs e)
    {
        branchEntity branchEntityObj = new branchEntity();

        branchEntityObj.brBranchCity_ = txtCityName.Text.Trim().ToUpper();
        branchEntityObj.brBranchPincode_ = Convert.ToDecimal(txtBrPin.Text.Trim());
        branchEntityObj.brBranchLocation_= txtBrArea.Text.Trim().ToUpper();
        locationFinderBAL locationFinderBALObj = new locationFinderBAL();
        int locResUI1 = locationFinderBALObj.locationFinderBALF1(branchEntityObj);


        
      

        if (locResUI1 >= 1)
        {
            DataSet dsObj = locationFinderBALObj.locFinderBALF1(branchEntityObj);
            GridView1.DataSource = dsObj;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
        else
        {
            Label1.Visible = true;
        }

    }
}