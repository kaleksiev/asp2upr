<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsArticle.aspx.cs" Inherits="pages_news_NewsArticle" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>
<%@ Register TagPrefix="my" TagName="Footer" Src="~/moduls/Footer.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <!-- Page Content -->
    <div class="container">
        <asp:ListView ID="LV_NewsArticle" runat="server" DataSourceID="SDS_NewsArticle">
            <ItemTemplate>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"><%# Eval("Title") %>
                            <small>by <a href="#"><%# Eval("Author") %></a></small>
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a>
                            </li>
                            <li class="active">Blog Post</li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-8">
                        <hr />
                        <p><i class="fa fa-clock-o"></i>Posted on <%# Eval("CreateDate") %></p>
                        <hr />
                        <img class="img-responsive" src='<%# Eval("Image") %>' alt="" runat="server" />
                        <hr />
                        <p class="lead"><%# Eval("Content") %></p>
                        <hr />
                        <asp:Button ID="Button_Back" CssClass="btn btn-success btn-lg" runat="server" Text="Назад" OnClientClick="JavaScript:window.history.back(1);return false;" />
                        <hr />
            </ItemTemplate>
        </asp:ListView>

        <asp:SqlDataSource ID="SDS_NewsArticle" runat="server" ConnectionString='<%$ ConnectionStrings:ConnString %>' DataSourceMode="DataReader"
            SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Id" SessionField="NewsID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <!-- Blog Comments -->

        <!-- Comments Form -->
        <div class="well">
            <h4>Leave a Comment:</h4>
            <form role="form">
                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>

        <hr />

        <!-- Posted Comments -->

        <!-- Comment -->
        <div class="media">
            <a class="pull-left" href="#">
                <img class="media-object" src="~/template_images/News/NewsArticle/NewsArticleComment1.jpg" width="64" height="64" alt="" runat="server" />
            </a>
            <div class="media-body">
                <h4 class="media-heading">Start Bootstrap
                           
                    <small>August 25, 2014 at 9:30 PM</small>
                </h4>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                   
            </div>
        </div>

        <!-- Comment -->
        <div class="media">
            <a class="pull-left" href="#">
                <img class="media-object" src="~/template_images/News/NewsArticle/NewsArticleComment2.jpg" width="64" height="64" alt="" runat="server">
            </a>
            <div class="media-body">
                <h4 class="media-heading">Start Bootstrap
                           
                    <small>August 25, 2014 at 9:30 PM</small>
                </h4>
                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                       
                <!-- Nested Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="~/template_images/News/NewsArticle/NewsArticleComment3.jpg" width="64" height="64" alt="" runat="server">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Nested Start Bootstrap
                                   
                            <small>August 25, 2014 at 9:30 PM</small>
                        </h4>
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                           
                    </div>
                </div>
                <!-- End Nested Comment -->
            </div>
        </div>

    </div>

    <!-- Blog Sidebar Widgets Column -->
    <div class="col-md-4">

        <!-- Blog Search Well -->
        <div class="well">
            <h4>Blog Search</h4>
            <div class="input-group">
                <input type="text" class="form-control">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                </span>
            </div>
            <!-- /.input-group -->
        </div>

        <!-- Blog Categories Well -->
        <div class="well">
            <h4>Blog Categories</h4>
            <div class="row">
                <div class="col-lg-6">
                    <ul class="list-unstyled">
                        <li><a href="#">Category Name</a>
                        </li>
                        <li><a href="#">Category Name</a>
                        </li>
                        <li><a href="#">Category Name</a>
                        </li>
                        <li><a href="#">Category Name</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <ul class="list-unstyled">
                        <li><a href="#">Category Name</a>
                        </li>
                        <li><a href="#">Category Name</a>
                        </li>
                        <li><a href="#">Category Name</a>
                        </li>
                        <li><a href="#">Category Name</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- /.row -->
        </div>

        <!-- Side Widget Well -->
        <div class="well">
            <h4>Side Widget Well</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p>
        </div>
    </div>
    </div>
       
    <!-- /.row -->
    </div>
   
    <!-- /.container -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <my:Footer ID="Footer" runat="server" />
</asp:Content>

