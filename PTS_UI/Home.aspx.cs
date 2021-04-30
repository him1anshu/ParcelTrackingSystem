using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PTS_Business_Entity;
using PTS_Business_Access_Layer;

public partial class UI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitFeed_Click(object sender, EventArgs e)
    {
        feedbackEntity feedbackEntityObj = new feedbackEntity();

        feedbackEntityObj.feedName_ = txtFeedName.Text.Trim();
        feedbackEntityObj.feedEmail_ = txtFeedEmail.Text.Trim();
        feedbackEntityObj.feedMobile_ = Convert.ToDecimal(txtFeedMobile.Text.Trim());
        feedbackEntityObj.feedFeedback_ = txtFeedFeedback.Text.Trim();

        addFeedbackBAL addFeedbackBALObj = new addFeedbackBAL();
        addFeedbackBALObj.addFeedbackBALF(feedbackEntityObj);
    }
}