using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduls_InsertNews : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ButtonInsert_Click(object sender, EventArgs e)
    { 
        MyDB.Insert(TextBox_Title.Text, TextBox_Author.Text, TextBox_Content.Text, FU_Image);
        Response.Redirect("~/Default.aspx");
    }
}