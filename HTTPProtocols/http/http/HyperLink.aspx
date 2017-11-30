<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HyperLink.aspx.cs" Inherits="http.HyperLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 83px">
    <form id="form1" runat="server">
        <div>

        </div>
        <p>
            <asp:HyperLink ID ="myHPL"  NavigateUrl="./HyperLink.aspx"  runat="server"></asp:HyperLink>

            welcome to HypwerLink</p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SessionApp.aspx">see the session</asp:HyperLink>
    </form>
</body>
</html>
