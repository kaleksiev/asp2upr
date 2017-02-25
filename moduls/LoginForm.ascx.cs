using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class moduls_LoginForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
            string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : Guid.Empty.ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM UserActivation WHERE ActivationCode = @ActivationCode"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                        cmd.Connection = con;
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();
                        if (rowsAffected == 1)
                        {
                         
                        }
                        else
                        {
                         
                        }
                    }
                }
            }
        }
    }

    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
        int userId = 0;
        string roles = string.Empty;
        string constr = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Validate_User"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", Login.UserName);
                cmd.Parameters.AddWithValue("@Password", Login.Password);
                cmd.Connection = con;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                userId = Convert.ToInt32(reader["UserId"]);
                roles = reader["Roles"].ToString();
                con.Close();
            }
            switch (userId)
            {
                case -1:
                    Login.FailureText = "Username and/or password is incorrect.";
                    break;
                case -2:
                    Login.FailureText = "Account has not been activated.";
                    break;
                default:
                    Session["UserId"] = userId;
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, Login.UserName, DateTime.Now, DateTime.Now.AddMinutes(2880), Login.RememberMeSet, roles, FormsAuthentication.FormsCookiePath);
                    string hash = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash);

                    if (ticket.IsPersistent)
                    {
                        cookie.Expires = ticket.Expiration;
                    }
                    Response.Cookies.Add(cookie);
                    
                    Response.Redirect(FormsAuthentication.GetRedirectUrl(Login.UserName, Login.RememberMeSet));

                    break;
            }
        }
    }
}