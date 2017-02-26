<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserActivationDB.ascx.cs" Inherits="moduls_UserActivationDB" %>

<div class="col-md-12">

    <asp:GridView CssClass="table table-hover" Width="100%" ID="GridView1" runat="server" DataSourceID="SDS_ActivationUser" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
            <asp:BoundField DataField="ActivationCode" HeaderText="ActivationCode" SortExpression="ActivationCode"></asp:BoundField>
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate"></asp:BoundField>
            <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" SortExpression="LastLoginDate"></asp:BoundField>
            <asp:BoundField DataField="RoleId" HeaderText="RoleId" SortExpression="RoleId"></asp:BoundField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SDS_ActivationUser" ConnectionString='<%$ ConnectionStrings:ConnString %>' SelectCommand="SELECT UserActivation.Id, UserActivation.ActivationCode, Users.Username, Users.Password, Users.Email, Users.CreateDate, Users.LastLoginDate, Users.RoleId FROM UserActivation INNER JOIN Users ON UserActivation.Id = Users.UserId"></asp:SqlDataSource>
</div>