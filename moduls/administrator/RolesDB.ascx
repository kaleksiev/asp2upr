<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RolesDB.ascx.cs" Inherits="moduls_administrator_RolesDB" %>

<div class="col-md-12">
    <div class="panel panel-body">
    <div class="row">
        <div class="col-md-5">
            <asp:Label ID="Lbl_RoleId" runat="server" Text="Role ID: "></asp:Label>
            <asp:TextBox ID="Txt_RoleId" CssClass="form-control" runat="server" />
        </div>
        <div class="col-md-5">
            <asp:Label ID="Lbl_RoleName" runat="server" Text="Role Name: "></asp:Label>
            <asp:TextBox ID="Txt_RoleName" CssClass="form-control" runat="server" />
        </div>
        <div class="col-md-2">
            <asp:Button ID="btn_Insert" CssClass="btn btn-danger" runat="server" Text="Insert New" OnClick="btn_Insert_Click" />
        </div>
    </div>
    </div>
    <asp:GridView CssClass="table table-hover" Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleId" DataSourceID="SDS_Roles" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="RoleId" HeaderText="RoleId" ReadOnly="True" SortExpression="RoleId"></asp:BoundField>
            <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
        </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource runat="server" ID="SDS_Roles" ConnectionString='<%$ ConnectionStrings:ConnString %>' SelectCommand="SELECT * FROM [Roles]" DeleteCommand="DELETE FROM [Roles] WHERE [RoleId] = @RoleId" InsertCommand="INSERT INTO [Roles] ([RoleId], [RoleName]) VALUES (@RoleId, @RoleName)" UpdateCommand="UPDATE [Roles] SET [RoleName] = @RoleName WHERE [RoleId] = @RoleId">
        <DeleteParameters>
            <asp:Parameter Name="RoleId" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Name="RoleId" ControlID="txt_RoleId" Type="String" />
            <asp:ControlParameter Name="RoleName" ControlID="txt_RoleName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RoleName" Type="String"></asp:Parameter>
            <asp:Parameter Name="RoleId" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
