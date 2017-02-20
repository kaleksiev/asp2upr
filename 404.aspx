<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="_404" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>
<%@ Register TagPrefix="my" TagName="Footer" Src="~/moduls/Footer.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" Runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">404
                    <small>Page Not Found</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">404</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron">
                    <h1><span class="error-404">404</span>
                    </h1>
                    <p>The page you're looking for could not be found. Here are some helpful links to get you back on track:</p>
                    <ul>
                        <li>
                            <a href="Default.aspx" runat="server">Home</a>
                        </li>
                        <li>
                            <a href="~/pages/About.aspx" runat="server">About</a>
                        </li>
                        <li>
                            <a href="~/pages/Services.aspx" runat="server">Services</a>
                        </li>
                        <li>
                            <a href="~/pages/Contact.aspx" runat="server">Contact</a>
                        </li>
                        <li>
                            Projects
                            <ul>
                                <li>
                                    <a href="~/pages/projects/Projects.aspx" runat="server">Projects</a>
                                </li>
                                <li>
                                    <a href="~/pages/projects/ProjectArticle.aspx" runat="server">ProjectsArticle</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            News
                            <ul>
                                <li>
                                    <a href="~/pages/news/News.aspx" runat="server">News</a>
                                </li>
                                <li>
                                    <a href="~/pages/news/NewsArticle.aspx" runat="server">NewsArticle</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            Other Pages
                            <ul>
                                <li>
                                    <a href="404.aspx" runat="server">404 Page</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
      <my:Footer ID="Footer" runat="server" />
</asp:Content>

