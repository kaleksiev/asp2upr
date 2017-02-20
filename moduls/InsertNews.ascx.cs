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
        MyDB.Insert(TextBox_Title.Text, TextBox_Author.Text, TextBox_Content.Text, UploadImage());
        Response.Redirect("~/Default.aspx");
    }

    protected string UploadImage()
    {
        Guid guid = Guid.NewGuid();

        string url = "";

        if (FU_Image.PostedFile != null)
        {
            string fileExtention = Path.GetExtension(FU_Image.FileName.ToLower());

            if (fileExtention == ".jpeg" || fileExtention == ".jpg" || fileExtention == ".png")
            {
             
                string FileName = Path.GetFileName(FU_Image.PostedFile.FileName);

                string rename = guid + FileName.Replace(" ", "_");

                FU_Image.SaveAs(Server.MapPath("~/pages/news/newsimages/" + rename ));

                url = "~/pages/news/newsimages/" + rename;
            }
        }

        return url;
    }

}