<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductSearchWebForm.aspx.cs" Inherits="Exam1.ProductSearchWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select A product :
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="products" DataTextField="ProductName" DataValueField="ProductName" Height="24px" Width="162px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="products" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" SelectCommand="SELECT DISTINCT [ProductName] FROM [Products]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
