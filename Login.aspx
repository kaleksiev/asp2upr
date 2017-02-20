<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register TagName="Login" TagPrefix="my" Src="~/moduls/LoginForm.ascx" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">            
                 <my:Login ID="login" runat="server"></my:Login>
                <asp:Button ID="Button_Back" CssClass="btn btn-success btn-lg" runat="server" Text="Назад" OnClientClick="JavaScript:window.history.back(1);return false;" />
            </div>
        </div>
    </div>
</asp:Content>

