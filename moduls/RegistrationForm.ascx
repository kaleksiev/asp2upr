<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RegistrationForm.ascx.cs" Inherits="moduls_RegistrationForm" %>

<div class="panel panel-default ">
    <div class="panel-body bg-warning">
        <h2>Registration</h2>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtUsername" ID="UserNameLabel">User Name:</asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" Font-Bold="true" ControlToValidate="txtUsername" runat="server" />
        </div>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPassword" ID="PasswordLabel">Password:</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"/>
            <asp:RequiredFieldValidator ID="RequiredField1" ErrorMessage="Required" ForeColor="Red" Font-Bold="true" ControlToValidate="txtPassword" runat="server" />
        </div>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtConfirmPassword" ID="ConfirmPasswordLabel">Confirm Password:</asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"/>
            <asp:CompareValidator ID="CompareValidatorPassword" ErrorMessage="No Match" ToolTip="Password must be the same" ForeColor="Red" Font-Bold="true" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" runat="server" />
        </div>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEmail" ID="Label2">Email:</asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"/>
            <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red" Font-Bold="true" ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="[A-Za-z0-9._]*@[A-Za-z0-9]*.[A-Za-z]{2,5}" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
        </div>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEmail" ID="Label1">Confirm Email:</asp:Label>
            <asp:TextBox ID="txtConfirmEmail" runat="server" CssClass="form-control"/>
            <asp:CompareValidator ID="CompareValidatorEmail" ErrorMessage="No Match" ToolTip="Email must be the same" ForeColor="Red" Font-Bold="true" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" runat="server" />
        </div>
        <div>
            <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
        </div>
        <hr />
        <asp:Button ID="Button_Register_User" Text="Register" runat="server" CssClass="btn btn-primary btn-lg" OnClick="RegisterUser" />
    </div>
</div>