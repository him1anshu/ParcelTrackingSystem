using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using PTS_Business_Entity;

namespace PTS_Data_Access_Layer
{
    public class addFeedbackDAL
    {
        public void addFeedbackDALF(feedbackEntity feedbackEntityObj)
        {
            string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

            using (SqlConnection conObj = new SqlConnection(CS))
            {
                SqlCommand cmdObj = new SqlCommand("addFeedback", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;

                cmdObj.Parameters.AddWithValue("@feedName", feedbackEntityObj.feedName_);
                cmdObj.Parameters.AddWithValue("@feedEmail", feedbackEntityObj.feedEmail_);
                cmdObj.Parameters.AddWithValue("@feedMobile",feedbackEntityObj.feedMobile_);
                cmdObj.Parameters.AddWithValue("@feedFeedback",feedbackEntityObj.feedFeedback_);

                conObj.Open();
                cmdObj.ExecuteNonQuery();
            }
        }

    }
}
