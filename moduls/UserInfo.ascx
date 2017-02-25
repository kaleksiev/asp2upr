<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfo.ascx.cs" Inherits="moduls_UserInfo" %>

<asp:ListView ID="ListView1" runat="server" DataSourceID="SDS_UserInfo">
    <ItemTemplate >
        <ul class="list-group">
            <li class="list-group-item">Username: <%# Eval("Username") %></li>
            <li class="list-group-item">Role: <%# Eval("Roles") %></li>
            <li class="list-group-item">Email: <%# Eval("Email") %></li>
            <li class="list-group-item">Created date: <%# Eval("CreateDate") %></li>
            <li class="list-group-item">Last login date: <%# Eval("LastLoginDate") %></li>
        </ul>
    </ItemTemplate>
</asp:ListView>
<asp:SqlDataSource runat="server" ID="SDS_UserInfo" ConnectionString='<%$ ConnectionStrings:ConnString %>' SelectCommand="SELECT [Username], [Email], [CreateDate], [LastLoginDate], (Select Roles.RoleName from Roles where RoleId = Users.RoleId) Roles FROM [Users] WHERE ([UserId] = @UserId)">
    <SelectParameters>
        <asp:SessionParameter SessionField="UserId" Name="UserId" Type="Int32"></asp:SessionParameter>
    </SelectParameters>
</asp:SqlDataSource>
