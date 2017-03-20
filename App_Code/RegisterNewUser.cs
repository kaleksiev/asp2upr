using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for RegisterNewUser
/// </summary>
public class RegisterNewUser
{
    private string Username { get; set; }
    private string Password { get; set; }
    private string UserEmail { get; set; }
    private string YourEmailAddres { get; set; }
    private string YourEmailPassword { get; set; }

    public RegisterNewUser(System.Web.UI.WebControls.TextBox Username, System.Web.UI.WebControls.TextBox Password, System.Web.UI.WebControls.TextBox UserEmail, string YourEmailAddres, string YourEmailPassword)
    {
        this.Username = Username.Text.Trim();
        this.Password = Password.Text.Trim();
        this.UserEmail = UserEmail.Text.Trim();
        this.YourEmailAddres = YourEmailAddres;
        this.YourEmailPassword = YourEmailPassword;
        Register();
    }

    private void Register()
    {
        int userId = 0;
        string constr = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
        var page = HttpContext.Current.CurrentHandler as Page;

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Insert_User"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", Username);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    cmd.Parameters.AddWithValue("@Email", UserEmail);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
            }
            string message = string.Empty;
            switch (userId)
            {
                case -1:
                    message = "Username already exists.\\nPlease choose a different username.";
                    break;
                case -2:
                    message = "Supplied email address has already been used.";
                    break;
                default:
                    message = "Registration successful.\\ Please check your email for activation link";
                    SendActivationEmail(userId);
                    break;
            }
            page.ClientScript.RegisterStartupScript(page.GetType(), "alert", "alert('" + message + "');", true);
        }
    }

    private void SendActivationEmail(int userId)
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
        string activationCode = Guid.NewGuid().ToString();

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(SQLQuery.InsertActivationCode))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        using (MailMessage mm = new MailMessage(YourEmailAddres, UserEmail))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + Username.Trim() + ",";
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = '" + HttpContext.Current.Request.Url.AbsoluteUri.Replace("Register.aspx", "Login.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
            body += "<br /><br />Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("noreplay.asp@gmail.com", "123456!@#$%");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
        }
        HttpContext.Current.Response.Redirect("~/Login.aspx");
    }
}
