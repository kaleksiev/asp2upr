<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DBUser.aspx.cs" Inherits="pages_administrator_DBUser" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>
<%@ Register TagPrefix="my" TagName="Footer" Src="~/moduls/Footer.ascx" %>
<%@ Register TagPrefix="my" TagName="UsersDB" Src="~/moduls/administrator/UsersDB.ascx" %>
<%@ Register TagPrefix="my" TagName="RolesDB" Src="~/moduls/administrator/RolesDB.ascx" %>
<%@ Register TagPrefix="my" TagName="UserActivationDB" Src="~/moduls/administrator/UserActivationDB.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Users" OnClick="Button1_Click" Width="33%" />
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="UserActivation" OnClick="Button2_Click" Width="33%"  />
                        <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="Roles" OnClick="Button3_Click" Width="33%"  />
                    </div>
                </div>
            </div>
        </div>


    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="Users" runat="server">
            <my:UsersDB ID="UsersDB" runat="server" />
        </asp:View>
        <asp:View ID="UserActivation" runat="server">
            <my:UserActivationDB ID="UserActivationDB" runat="server" />
        </asp:View>
        <asp:View ID="Roles" runat="server">
            <my:RolesDB ID="RolesDB" runat="server" />
        </asp:View>
    </asp:MultiView>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <my:Footer ID="Footer" runat="server" />
</asp:Content>

