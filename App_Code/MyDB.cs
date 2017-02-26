using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.IO;

/// <summary>
/// Summary description for MyDB
/// </summary>
public class MyDB
{

    public static void Insert(string title, string author, string content, System.Web.UI.WebControls.FileUpload FU_Image)
    {
        Guid guid = Guid.NewGuid();
        string url = "";
        string ConnectionString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConnectionString);

        try
        {
            if (FU_Image.PostedFile != null)
            {
                string fileExtention = Path.GetExtension(FU_Image.FileName.ToLower());
                if (fileExtention == ".jpeg" || fileExtention == ".jpg" || fileExtention == ".png")
                {
                    string FileName = Path.GetFileName(FU_Image.PostedFile.FileName);

                    string rename = guid + FileName.Replace(" ", "_");

                    FU_Image.SaveAs(System.Web.HttpContext.Current.Server.MapPath("~/pages/news/newsimages/" + rename));

                    url = "~/pages/news/newsimages/" + rename;
                }
            }
            conn.Open();
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = SQLQuery.NewsInsert;
                cmd.Parameters.AddWithValue("@Title", title);
                cmd.Parameters.AddWithValue("@Author", author);
                cmd.Parameters.AddWithValue("@Content", content);
                cmd.Parameters.AddWithValue("@CreateDate", String.Format("{0:d/M/yyyy HH:mm:ss}", DateTime.Now));
                cmd.Parameters.AddWithValue("@Image", url);
                cmd.ExecuteNonQuery();
            }
            conn.Close();
        }
        catch (Exception e)
        {
        }
    }

}