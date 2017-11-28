<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NorthWindObject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 459px; width: 890px">
            Select a Country :
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Countries">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Countries" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" SelectCommand="SELECT DISTINCT [Country] FROM [Customers]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="CustomerObject" Height="199px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="448px">
            </asp:GridView>
            <asp:ObjectDataSource ID="CustomerObject" runat="server"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
