using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YangHongwei0323SkySharkWebApplication
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                String username;
                String password;
                username = TextUsername.Text;
                password = TextPassword.Text;

                String ConnectionString = "Data Source=localhost;Initial Catalog=ARPDDatabase;Integrated Security=True";
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();

                String queryString = "select username , password , role from dtUsers where UserName='" + username +"'";
                SqlDataAdapter adapter = new SqlDataAdapter();

                adapter.SelectCommand = new SqlCommand(queryString, conn);

                DataSet ds1 = new DataSet();
                adapter.Fill(ds1, "dtUsers");

                if (ds1.Tables["dtUsers"].Rows.Count == 0)
                {
                    lblMessage.Text = "Invalid Username";
                }
                else
                {
                    if (ds1.Tables["dtUsers"].Rows[0][1].ToString().Trim() == TextPassword.Text.Trim())
                    {
                        String Role;
                        Role = ds1.Tables["dtUsers"].Rows[0][2].ToString().Trim();
                        Session["userName"] = username;
                        Session["userRole"] = Role;
                        if(Role == "Disabled")
                        {
                            lblMessage.Text = "Your account has been disabled. Please contact the network Administrator";
                            return;
                        }
                        switch (Role)
                        {
                            case "Admin":
                                Response.Redirect(".\\NA\\ManageUsers.aspx");
                                break;
                            case "BM":
                                Response.Redirect(".\\BM\\AddFI.aspx");
                                break;
                            case "LOB":
                                Response.Redirect(".\\LOB\\CreateRes.aspx");
                                break;
                        }
                    }
                    else
                    {
                        lblMessage.Text = "Invalid Password";
                    }
                }
                conn.Close();
            }
        }
    }
}