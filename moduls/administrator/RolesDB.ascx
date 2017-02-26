<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RolesDB.ascx.cs" Inherits="moduls_administrator_RolesDB" %>

<div class="col-md-12">

    <asp:GridView CssClass="table table-hover" Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleId" DataSourceID="SDS_Roles" AllowPaging="True">

        <Columns>
            <asp:BoundField DataField="RoleId" HeaderText="RoleId" ReadOnly="True" SortExpression="RoleId"></asp:BoundField>
            <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SDS_Roles" ConnectionString='<%$ ConnectionStrings:ConnString %>' SelectCommand="SELECT * FROM [Roles]"></asp:SqlDataSource>
</div>