<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserActivationDB.ascx.cs" Inherits="moduls_UserActivationDB" %>

<div class="col-md-12">

    <asp:GridView CssClass="table table-hover" Width="100%" ID="GridView1" runat="server" DataSourceID="SDS_ActivationUser" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
            <asp:BoundField DataField="ActivationCode" HeaderText="ActivationCode" SortExpression="ActivationCode"></asp:BoundField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SDS_ActivationUser" ConnectionString='<%$ ConnectionStrings:ConnString %>' SelectCommand="SELECT * FROM [UserActivation]" DeleteCommand="DELETE FROM [UserActivation] WHERE [Id] = @Id" InsertCommand="INSERT INTO [UserActivation] ([Id], [ActivationCode]) VALUES (@Id, @ActivationCode)" UpdateCommand="UPDATE [UserActivation] SET [ActivationCode] = @ActivationCode WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ActivationCode" Type="Object"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ActivationCode" Type="Object"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</div>