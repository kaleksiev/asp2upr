using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduls_administrator_RolesDB : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Txt_RoleId.TextMode = TextBoxMode.Number;
        Txt_RoleName.TextMode = TextBoxMode.SingleLine;
    }

    protected void btn_Insert_Click(object sender, EventArgs e)
    {
        try
        {
            SDS_Roles.Insert();
        }
        catch(Exception ex)
        {

        }
        finally
        {
            Txt_RoleId.Text = string.Empty;
            Txt_RoleName.Text = string.Empty;
        }
       
    }
}