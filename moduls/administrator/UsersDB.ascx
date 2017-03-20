<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UsersDB.ascx.cs" Inherits="moduls_administrator_UsersDB" %>

<div class="col-md-12">

    <asp:GridView CssClass="table table-hover" Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SDS_Users" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" InsertVisible="False" SortExpression="UserId"></asp:BoundField>
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate"></asp:BoundField>
            <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" SortExpression="LastLoginDate"></asp:BoundField>
            <asp:BoundField DataField="RoleId" HeaderText="RoleId" SortExpression="RoleId"></asp:BoundField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SDS_Users" ConnectionString='<%$ ConnectionStrings:ConnString %>' SelectCommand="SELECT * FROM [Users]" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([Username], [Password], [Email], [CreateDate], [LastLoginDate], [RoleId]) VALUES (@Username, @Password, @Email, @CreateDate, @LastLoginDate, @RoleId)" UpdateCommand="UPDATE [Users] SET [Username] = @Username, [Password] = @Password, [Email] = @Email, [CreateDate] = @CreateDate, [LastLoginDate] = @LastLoginDate, [RoleId] = @RoleId WHERE [UserId] = @UserId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="CreateDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="LastLoginDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="RoleId" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="CreateDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="LastLoginDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="RoleId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UserId" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
