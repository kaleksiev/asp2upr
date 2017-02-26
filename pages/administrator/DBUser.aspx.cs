using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_administrator_DBUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
        }
        else if (!this.Page.User.IsInRole("Administrator"))
        {
            Response.Redirect("~/Default.aspx");
        }
    }

    private void ViewCheck(int view)
    {
        if (view >= 0 || view <= 3)
        {
            MultiView1.ActiveViewIndex = view;
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This View does not exist!');", true);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ViewCheck(0);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        ViewCheck(1);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        ViewCheck(2);
    }
}