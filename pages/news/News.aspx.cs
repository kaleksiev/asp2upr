using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_news_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string ParagraphIfData(string input)
    {
        string a = new string(input.Take(255).ToArray());
        return Regex.Replace(a, @"((http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&amp;:/~\+#]*[\w\-\@?^=%&amp;/~\+#])?)", String.Empty);
    }

    protected void Button_Article_Click(object sender, EventArgs e)
    {

        Session["NewsID"] = ((Button)sender).CommandArgument;

        Response.Redirect("~/pages/news/NewsArticle.aspx");
    }
}