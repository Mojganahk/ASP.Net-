<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="VideoRentalStore.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="custommer">
            </asp:GridView>
            <asp:ObjectDataSource ID="custommer" runat="server"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
