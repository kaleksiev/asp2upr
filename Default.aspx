<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>
<%@ Register TagPrefix="my" TagName="Footer" Src="~/moduls/Footer.ascx" %>
<%@ Register TagPrefix="my" TagName="InsertNews" Src="~/moduls/InsertNews.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Menu" runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                

            </div>
        </div>
    </div>

    <my:InsertNews ID="InsertNews" runat="server" />



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <my:Footer ID="Footer" runat="server" />
</asp:Content>

