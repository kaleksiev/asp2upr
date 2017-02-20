﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Projects.aspx.cs" Inherits="pages_projects_Projects" %>

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
                <h1 class="page-header">One Column Portfolio
                    <small>Subheading</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">One Column Portfolio</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        <!-- Project One -->
        <div class="row">
            <div class="col-md-7">
                <a href="ProjectArticle.aspx" runat="server">
                    <img class="img-responsive img-hover" src="~/template_images/Projects/Project1.jpg" alt="" runat="server"/>
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project One</h3>
                <h4>Subheading</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
                <a class="btn btn-primary" href="ProjectArticle.aspx" runat="server">View Project</a>
            </div>
        </div>
        <!-- /.row -->

        <hr/>

        <!-- Project Two -->
        <div class="row">
            <div class="col-md-7">
                <a href="ProjectArticle.aspx" runat="server">
                    <img class="img-responsive img-hover" src="~/template_images/Projects/Project2.jpg" alt="" runat="server"/>
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project Two</h3>
                <h4>Subheading</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, odit velit cumque vero doloremque repellendus distinctio maiores rem expedita a nam vitae modi quidem similique ducimus! Velit, esse totam tempore.</p>
                <a class="btn btn-primary" href="ProjectArticle.aspx" runat="server">View Project</a>
            </div>
        </div>
        <!-- /.row -->

        <hr/>

        <!-- Project Three -->
        <div class="row">
            <div class="col-md-7">
                <a href="ProjectArticle.aspx" runat="server">
                    <img class="img-responsive img-hover" src="~/template_images/Projects/Project3.jpg" alt="" runat="server"/>
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project Three</h3>
                <h4>Subheading</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, temporibus, dolores, at, praesentium ut unde repudiandae voluptatum sit ab debitis suscipit fugiat natus velit excepturi amet commodi deleniti alias possimus!</p>
                <a class="btn btn-primary" href="ProjectArticle.aspx" runat="server">View Project</a>
            </div>
        </div>
        <!-- /.row -->

        <hr/>

        <!-- Project Four -->
        <div class="row">

            <div class="col-md-7">
                <a href="ProjectArticle.aspx" runat="server">
                    <img class="img-responsive img-hover" src="~/template_images/Projects/Project4.jpg" alt="" runat="server"/>
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project Four</h3>
                <h4>Subheading</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, quidem, consectetur, officia rem officiis illum aliquam perspiciatis aspernatur quod modi hic nemo qui soluta aut eius fugit quam in suscipit?</p>
                <a class="btn btn-primary" href="ProjectArticle.aspx" runat="server">View Project</a>
            </div>
        </div>
        <!-- /.row -->

        <hr/>

        <!-- Project Five -->
        <div id="Project5" class="row">
            <div class="col-md-7">
                <a href="#">
                    <img class="img-responsive img-hover" src="~/template_images/Projects/Project5.jpg" alt="" runat="server"/>
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project Five</h3>
                <h4>Subheading</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, quo, minima, inventore voluptatum saepe quos nostrum provident ex quisquam hic odio repellendus atque porro distinctio quae id laboriosam facilis dolorum.</p>
                <a class="btn btn-primary" href="#">View Project</a>
            </div>
        </div>
        <!-- /.row -->

        <hr/>

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->
        </div>
        <hr/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
      <my:Footer ID="Footer" runat="server" />
</asp:Content>