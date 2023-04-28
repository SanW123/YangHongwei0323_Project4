using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YangHongwei0323SkySharkWebApplication.NA
{
    public partial class ManageDatabase1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnArchive_Click1(object sender, EventArgs e)
        {
            try
            {
                lblMessage2.Text = "";
                String ConnectionString = "Data Source=localhost;Initial Catalog=ARPDDatabase;Integrated Security=True";
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("UpdateReservations", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@date", DateTime.Today.Date.ToShortDateString());
                cmd.ExecuteNonQuery();
                conn.Close();
                lblMessage2.Text = "Update Reservations Done!!!";
            }
            catch (Exception ex)
            {
                lblMessage2.Text = ex.Message;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                lblMessage2.Text = "";
                String ConnectionString = "Data Source=localhost;Initial Catalog=ARPDDatabase;Integrated Security=True";
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("FrequentFlier", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                conn.Close();
                lblMessage2.Text = "Update FrequentFlier Done!!!";
            }
            catch (Exception ex)
            {
                lblMessage2.Text = ex.Message;
            }
        }
    }
}