<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPControlValue.aspx.cs" Inherits="http.ASPControlValue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="tbCounter" runat="server" ClientIDMode="AutoID" OnClick="Button1_Click" Text="tbCounter" />
        <div>
        </div>
    </form>
</body>
</html>
