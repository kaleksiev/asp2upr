<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginForm.ascx.cs" Inherits="moduls_LoginForm" %>

<asp:Login ID="Login" runat="server" OnAuthenticate="Login_Authenticate" Width="400px">
    <LayoutTemplate>
        <div class="panel panel-default ">
            <div class="panel-body bg-warning">
                <h2>Log In</h2>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="UserName"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="ctl00$Login" ToolTip="User Name is required." ID="UserNameRequired">Please enter username</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label>
                    <asp:TextBox runat="server" CssClass="form-control" TextMode="Password" ID="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="ctl00$Login" ToolTip="Password is required." ID="PasswordRequired">Please enter password</asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                </div>
                <hr />
                <asp:Button runat="server" CommandName="Login" CssClass="btn btn-success btn-md" Text="Log In" ValidationGroup="ctl00$Login" ID="LoginButton"></asp:Button>
            </div>
        </div>
    </LayoutTemplate>
</asp:Login>
