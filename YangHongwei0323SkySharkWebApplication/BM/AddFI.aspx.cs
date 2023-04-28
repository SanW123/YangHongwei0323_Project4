using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YangHongwei0323SkySharkWebApplication.BM
{
    public partial class AddFI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String ConnectionString = "Data Source=localhost;Initial Catalog=ARPDDatabase;Integrated Security=True"; 
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            string selectSql = "SELECT FLtNo FROM dtFltDetails";
            SqlCommand cmd = new SqlCommand(selectSql, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "FLightNo");
            conn.Close();
            foreach (DataRow row in dataSet.Tables["FlightNo"].Rows)
            {

                if (row[0].ToString().Trim() == txtFlightNumber.Text.Trim())
                {
                    lblMessage.Text = "The Flight already exists.Please try another fligh number";
                    return;
                }
            }

            TimeSpan deptime, arrtime;
            String DepDateTime, ArrDateTime;
            try
            {
                deptime = Convert.ToDateTime(txtDeparture.Text).TimeOfDay;
                arrtime = Convert.ToDateTime(txtArrival.Text).TimeOfDay;
                DepDateTime = Calendar1.SelectedDate.ToShortDateString() + "" + deptime.ToString();
                ArrDateTime = Calendar2.SelectedDate.ToShortDateString() + "" + arrtime.ToString();
                if (deptime > arrtime)
                {
                    lblMessage.Text = "Departure Time cant be greater than or equal to arrival time";
                    return;
                }
            }
            catch
            {
                lblMessage.Text = "Invalid departure or arrival time";
                return;
            }

            try
            {
                conn.Open();
                string updateSql = "INSERT INTO [dtFltDetails]([FltNo],[Origin],[Destination],[Deptime],[Arrtime],"+
                "[AircraftType],"+
                "[SeatsExec],[SeatsBn],[FareExec],[FareBn],[LaunchDate])"+
                "VALUES(@FLtNo, @Origin, @Destination, @Deptime, @Arrtime, @AircraftType,"+
                "@SeatsExec, @SeatsBn, @FareExec, @FareBn, @LaunchDate)";
                SqlCommand cmd2 = new SqlCommand(updateSql, conn);
                cmd2.Parameters.AddWithValue("@FLtNo", txtFlightNumber.Text.Trim());
                cmd2.Parameters.AddWithValue("@Origin", txtOrigin.Text.Trim());
                cmd2.Parameters.AddWithValue("@Destination", txtDestination.Text.Trim());
                cmd2.Parameters.AddWithValue("@Deptime", DepDateTime);
                cmd2.Parameters.AddWithValue("@Arrtime", ArrDateTime);
                cmd2.Parameters.AddWithValue("@AircraftType", txtAircraft.Text.Trim());
                cmd2.Parameters.AddWithValue("@SeatsExec", Convert.ToInt32(txtNumberOfSeats.Text.Trim()));
                cmd2.Parameters.AddWithValue("@SeatsBn", Convert.ToInt32(txtNumberOfSeats2.Text.Trim()));
                cmd2.Parameters.AddWithValue("@FareExec", Convert.ToInt32(txtExecutive.Text.Trim()));
                cmd2.Parameters.AddWithValue("@FareBn", Convert.ToInt32(txtBusiness.Text.Trim()));
                cmd2.Parameters.AddWithValue("@LaunchDate", DateTime.Today.Date.ToShortDateString());
                int n = cmd2.ExecuteNonQuery();
                conn.Close();
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
                conn.Close();
                return;
            }
            conn.Close();
            lblMessage.Text = "FLight add Successfully";
            txtFlightNumber.Text = "";
            txtOrigin.Text = "";
            txtAircraft.Text = "";
            txtArrival.Text = "";
            txtBusiness.Text = "";
            txtDeparture.Text = "";
            txtDestination.Text = "";
            txtExecutive.Text = "";
            txtNumberOfSeats2.Text = "";
            txtNumberOfSeats.Text = "";
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            txtFlightNumber.Text = "";
            txtOrigin.Text = "";
            txtAircraft.Text = "";
            txtArrival.Text = "";
            txtBusiness.Text = "";
            txtDeparture.Text = "";
            txtDestination.Text = "";
            txtExecutive.Text = "";
            txtNumberOfSeats2.Text = "";
            txtNumberOfSeats.Text = "";
        }
    }
}