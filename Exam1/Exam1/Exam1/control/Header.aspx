<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Header.aspx.cs" Inherits="Exam1.control.Header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 57%;
            height: 130px;
            margin-left: 50px;
        }
        .auto-style2 {
            height: 164px;
            text-align: right;
        }
        .auto-style4 {
            width: 156px;
            height: 137px;
            float: left;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <br />
                <img alt="" class="auto-style4" src="../images/1.png" /><br />
                <br />
            <asp:Label ID="lbCurrent" runat="server"></asp:Label>
                <h2 class="auto-style5">Students Evaluation</h2>
            </td>

          
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
