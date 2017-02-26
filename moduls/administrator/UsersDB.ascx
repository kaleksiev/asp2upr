<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UsersDB.ascx.cs" Inherits="moduls_administrator_UsersDB" %>

<div class="col-md-12">

    <asp:GridView CssClass="table table-hover" Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SDS_Users" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" InsertVisible="False" SortExpression="UserId"></asp:BoundField>
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate"></asp:BoundField>
            <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" SortExpression="LastLoginDate"></asp:BoundField>
            <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SDS_Users" ConnectionString='<%$ ConnectionStrings:ConnString %>' SelectCommand="SELECT Users.UserId, Users.Username, Users.Password, Users.Email, Users.CreateDate, Users.LastLoginDate, Roles.RoleName FROM Roles INNER JOIN Users ON Roles.RoleId = Users.RoleId"></asp:SqlDataSource>
</div>
