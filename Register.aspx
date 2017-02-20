<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register TagPrefix="my" TagName="RegistrationForm" Src="~/moduls/RegistrationForm.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                     <my:RegistrationForm ID="RegForm" runat="server"/>
            </div>
        </div>
    </div>
</asp:Content>
