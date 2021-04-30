using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using PTS_Business_Entity;


namespace PTS_Data_Access_Layer
{
    public class mngEditConsDAL
    {
        string CS = ConfigurationManager.ConnectionStrings["PTS_DatabaseConnectionString1"].ConnectionString;

        public string mngEditConsDALF(string mngConsId, out string consTrackId,out string consShipperName,out string consShipperAddress,out string consShipperMobile,out string consShipperMail,out string consMaterialDescription,out string consTotalItems,out string consTotalWeight,out string consTotalDistance,out string consServiceType,out string consShippingCharge,out string consDateOfBooking,out string consSrcBranchId,out string consSrcBranchName,out string consSrcBranchCity,out string consDestBranchId,out string consDestBranchName,out string consDestBranchCity,out string consReceiverName,out string consReceiverAddress,out string consReceiverMobile,out string consReceiverMail,out string consBookedBy)
        {
            string consId = string.Empty;
            string consIdd = string.Empty;
            string consTrackIdd = string.Empty;
            string consShipperNamee = string.Empty;
            string consShipperAddresss = string.Empty;
            string consShipperMobilee = string.Empty;
            string consShipperMaill = string.Empty;
            string consMaterialDescriptionn = string.Empty;
            string consTotalItemss = string.Empty;
            string consTotalWeightt = string.Empty;
            string consTotalDistancee = string.Empty;
            string consServiceTypee = string.Empty;
            string consShippingChargee = string.Empty;
            string consDateOfBookingg = string.Empty;
            string consSrcBranchIdd = string.Empty;
            string consSrcBranchNamee = string.Empty;
            string consSrcBranchCityy = string.Empty;
            string consDestBranchIdd = string.Empty;
            string consDestBranchNamee = string.Empty;
            string consDestBranchCityy = string.Empty;
            string consReceiverNamee = string.Empty;
            string consReceiverAddresss = string.Empty;
            string consReceiverMobilee = string.Empty;
            string consReceiverMaill = string.Empty;
            string consBookedByy = string.Empty;
            using (SqlConnection conObj = new SqlConnection(CS))
            {

                conObj.Open();
                SqlCommand cmdObj = new SqlCommand("mngEditCons", conObj);
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Parameters.AddWithValue("@consId", mngConsId);
                using (SqlDataReader reader = cmdObj.ExecuteReader())
                {
                    while (reader.Read())
                    {

                        consId = reader[0].ToString();
                        consTrackIdd = reader[1].ToString();
                        consShipperNamee = reader[2].ToString();
                        consShipperAddresss = reader[3].ToString();
                        consShipperMobilee = reader[4].ToString();
                        consShipperMaill = reader[5].ToString();
                        consMaterialDescriptionn = reader[6].ToString();
                        consTotalItemss = reader[7].ToString();
                        consTotalWeightt = reader[8].ToString();
                        consTotalDistancee = reader[9].ToString();
                        consServiceTypee = reader[10].ToString();
                        consShippingChargee = reader[11].ToString();
                        consDateOfBookingg = reader[12].ToString();
                        consSrcBranchIdd = reader[13].ToString();
                        consSrcBranchNamee = reader[14].ToString();
                        consSrcBranchCityy = reader[15].ToString();
                        consDestBranchIdd = reader[16].ToString();
                        consDestBranchNamee = reader[17].ToString();
                        consDestBranchCityy = reader[18].ToString();
                        consReceiverNamee = reader[19].ToString();
                        consReceiverAddresss = reader[20].ToString();
                        consReceiverMobilee = reader[21].ToString();
                        consReceiverMaill = reader[22].ToString();
                        consBookedByy = reader[23].ToString();

                    }
                }
            }
                        consTrackId=consTrackIdd;
                        consShipperName=consShipperNamee;
                        consShipperAddress=consShipperAddresss;
                        consShipperMobile=consShipperMobilee;
                        consShipperMail=consShipperMaill;
                        consMaterialDescription=consMaterialDescriptionn;
                        consTotalItems=consTotalItemss;
                        consTotalWeight=consTotalWeightt;
                        consTotalDistance=consTotalDistancee;
                        consServiceType=consServiceTypee;
                        consShippingCharge=consShippingChargee;
                        consDateOfBooking=consDateOfBookingg;
                        consSrcBranchId=consSrcBranchIdd;
                        consSrcBranchName=consSrcBranchNamee;
                        consSrcBranchCity=consSrcBranchCityy;
                        consDestBranchId=consDestBranchIdd;
                        consDestBranchName=consDestBranchNamee;
                        consDestBranchCity=consDestBranchCityy;
                        consReceiverName=consReceiverNamee;
                        consReceiverAddress=consReceiverAddresss;
                        consReceiverMobile=consReceiverMobilee;
                        consReceiverMail=consReceiverMaill;
                        consBookedBy=consBookedByy;
                        return consId;
        }

    }
}
