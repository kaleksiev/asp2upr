using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class moduls_RegistrationForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void RegisterUser(object sender, EventArgs e)
    {
        RegisterNewUser register = new RegisterNewUser(txtUsername, txtPassword, txtEmail, "noreplay.asp@gmail.com", "123456!@#$%");
    }
}
