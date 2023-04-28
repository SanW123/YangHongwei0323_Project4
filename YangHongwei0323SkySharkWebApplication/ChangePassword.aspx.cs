using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YangHongwei0323SkySharkWebApplication
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usrRole"] == null)
            {
                Response.Redirect("~/default.aspx");
            }
            if (!(Session["usrRole"].ToString() == "Admin"))
            {
                Response.Redirect("~/default.aspx");
            }

            else
            {
                Label1.Text = "Changing password for " + Session["userName"].ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                String ConnectionString = "Data Source=localhost;Initial Catalog=ARPDDatabase;Integrated Security=True";
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                string updateSql = "UPDATE dtUsers SET Password = @Password,PasswordChanged ='1' WHERE (Username =@original_username )";
                SqlCommand cmd = new SqlCommand(updateSql, conn);
                cmd.Parameters.AddWithValue("@Password", TextPassword.Text);
                cmd.Parameters.AddWithValue("@original_username", Session["usrName"]);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/NA/ManageUsers.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}