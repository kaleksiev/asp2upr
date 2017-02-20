<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="pages_news_News" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>
<%@ Register TagPrefix="my" TagName="Footer" Src="~/moduls/Footer.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">News
                    <small><%=DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss") %></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Blog Home Two</li>
                </ol>
            </div>
        </div>
    </div>

    <asp:ListView ID="LV_AllNews" runat="server" DataSourceID="SDS_News" DataKeyNames="ID">
        <ItemTemplate>
            <div class="container">
                <div class="row ">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="col-md-1 text-center">
                                    <p>
                                        <i class="fa fa-camera fa-4x"></i>
                                    </p>
                                    <p><%# Eval("CreateDate") %></p>
                                </div>
                                <div class="col-md-5">
                                    <a href="NewsArticle.aspx">
                                        <img class="img-responsive img-hover" src='<%#Eval("Image") %>' alt="" runat="server" />
                                    </a>
                                </div>
                                <div class="col-md-6">
                                    <h3>
                                        <a href="NewsArticle.aspx"><%#Eval("Title") %></a>
                                    </h3>
                                    <p>
                                        by <a href="#"><%#Eval("Author") %></a>
                                    </p>
                                    <p><%# ParagraphIfData(Eval("Content").ToString()) + "..." %></p>
                                    <asp:Button ID="Button_Article" CommandArgument='<%# Eval("ID") %>' runat="server" Text="Read More" CssClass="btn btn-primary" OnClick="Button_Article_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource runat="server"  ID="SDS_News" ConnectionString='<%$ ConnectionStrings:ConnString %>' SelectCommand="SELECT * FROM [News] ORDER BY [CreateDate] DESC"></asp:SqlDataSource>
    <hr />
    <div class="container">
        <div class="row">
            <div class="pager">
                <asp:DataPager ID="DP_News" runat="server" PagedControlID="LV_AllNews" PageSize="3">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="false" PreviousPageText="Предишна" ShowFirstPageButton="true" FirstPageText="Първа" ButtonCssClass="previous" />
                        <asp:NumericPagerField ButtonType="Link" ButtonCount="10" NumericButtonCssClass="pagination" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowPreviousPageButton="false" NextPageText="Следваща" ShowLastPageButton="true" LastPageText="Последна" ButtonCssClass="next" />
                    </Fields>
                </asp:DataPager>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <my:Footer ID="Footer" runat="server" />
</asp:Content>



