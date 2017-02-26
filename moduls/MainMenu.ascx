<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenu.ascx.cs" Inherits="moduls_MainMenu" %>

<%@ Register TagName="Login" TagPrefix="my" Src="~/moduls/LoginForm.ascx" %>
<%@ Register TagName="UserInfo" TagPrefix="my" Src="~/moduls/UserInfo.ascx" %>

<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="~/Default.aspx" runat="server">SEO111</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <asp:LoginView ID="LoginView1" runat="server">
                    <AnonymousTemplate>
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
                            <a href="~/pages/projects/Projects.aspx" runat="server">Projects</a>
                        </li>
                        <li>
                            <a href="~/pages/news/News.aspx" runat="server">News</a>
                        </li>
                        <li>
                            <a href="~/Register.aspx" runat="server"><span class="glyphicon glyphicon-user"></span>Sign Up</a>
                        </li>
                        <li class="dropdowna">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" runat="server"><span class="glyphicon glyphicon-log-in"></span>Login</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <my:Login ID="login" runat="server" />
                                </li>
                            </ul>
                        </li>
                    </AnonymousTemplate>
                    <RoleGroups>
                        <asp:RoleGroup Roles="Administrator">
                            <ContentTemplate>
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
                                    <a href="~/pages/projects/Projects.aspx" runat="server">Projects</a>
                                </li>
                                <li>
                                    <a href="~/pages/news/News.aspx" runat="server">News</a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="~/404.aspx" runat="server">404</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administrator<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="~/pages/administrator/InsertNews.aspx" runat="server">InsertNews</a>
                                        </li>
                                        <li>
                                            <a href="~/pages/administrator/DBUser.aspx" runat="server">Manage Users</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <span class="glyphicon glyphicon-user"></span>
                                        <asp:LoginName ID="LoginName1" runat="server" />
                                    </a>
                                    <ul class="dropdown-menu" style="width: 400px;">
                                        <li>
                                            <my:UserInfo ID="UserInfo" runat="server" />
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <asp:LoginStatus ID="LoginStatus1" runat="server" />

                                </li>
                            </ContentTemplate>
                        </asp:RoleGroup>
                        <asp:RoleGroup Roles="User">
                            <ContentTemplate>
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
                                    <a href="~/pages/projects/Projects.aspx" runat="server">Projects</a>
                                </li>
                                <li>
                                    <a href="~/pages/news/News.aspx" runat="server">News</a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="~/404.aspx" runat="server">404</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <span class="glyphicon glyphicon-user"></span>
                                        <asp:LoginName ID="LoginName1" runat="server" />
                                    </a>
                                    <ul class="dropdown-menu" style="width: 400px;">
                                        <li>
                                            <my:UserInfo ID="UserInfo" runat="server" />
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                                </li>
                            </ContentTemplate>
                        </asp:RoleGroup>
                    </RoleGroups>
                </asp:LoginView>
            </ul>
        </div>
        <div>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
