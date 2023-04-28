using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;

namespace YangHongwei0323SkySharkWebApplication.NA
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username, password, role;
            int selection;
            role = listRole.SelectedValue;
            username = txtUsername.Text;
            password = txtPassword.Text;
            selection = listRole.SelectedIndex;
            String ConnectionString = "Data Source=localhost;Initial Catalog=ARPDDatabase;Integrated Security=True";
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            string queryString = "Select UserName,Password,role from dtUsers where UserName='" + username + "'";
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = new SqlCommand(queryString, conn);
            DataSet ds1 = new DataSet();
            adapter.Fill(ds1, "dtUsers");
            if (ds1.Tables["dtUsers"].Rows.Count == 0)
            //insert
            {
                string insertQuerystring = "INSERT INTO [dtUsers]([Username],[Password],[Role])VALUES ('" + username + "','" + password + "','" + role + "')";
                SqlCommand instercommand = new SqlCommand(insertQuerystring, conn);
                instercommand.ExecuteNonQuery();
            }
            else
            {
                lblMessage.Text = "The user name already exists.Please try another user name";
                return;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string username = txtDeleteUsername.Text;
            String ConnectionString = "Data Source=localhost;Initial Catalog=ARPDDatabase;Integrated Security=True";
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            if (username == "" || username == null)
            {
                lblMessage.Text = "Please specify a valid user name";
            }
            else
            {
                string queryString = "Select UserName,Password,role from dtUsers where UserName='" + username + "'";
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = new SqlCommand(queryString, conn);
                DataSet ds1 = new DataSet();
                adapter.Fill(ds1, "dtUsers");
                if (ds1.Tables["dtUsers"].Rows.Count == 0)
                {
                    lblMessage.Text = "User does not exists";
                    return;
                }
                else
                {
                    string queryString2 = "delete from dtUsers where UserName='" + username + "'";
                    SqlCommand insterCommand = new SqlCommand(queryString2, conn);
                    insterCommand.ExecuteNonQuery();
                    conn.Close();
                    lblMessage.Text = "User deleted successfully";
                    txtDeleteUsername.Text = "";
                }
            }
    }

    
    }
}