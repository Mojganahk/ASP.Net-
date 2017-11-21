<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="simple1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #lbOutput {
            width: 737px;
            height: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
            <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
            <asp:Button ID="btSubmit" runat="server" OnClick="btSubmit_click" Text="Submit" />
            <asp:Label ID="lbOutput" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
