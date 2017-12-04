<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VideoRentalStore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 73%;
            height: 612px;
        }
        .auto-style3 {
            height: 174px;
        }
        .auto-style10 {
            width: 252px;
        }
        .auto-style11 {
            width: 299px;
        }
        .auto-style13 {
            height: 174px;
            width: 160px;
        }
        .auto-style14 {
            width: 160px;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            font-size: medium;
        }
        .auto-style18 {
            text-align: center;
            color: #0099CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style17" colspan="4">
                        <h1 class="auto-style18">Video Rental Store</h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15" colspan="2" rowspan="2">
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="253px" ImageUrl="~/images/3.jpg" PostBackUrl="~/RentMedia.aspx" Width="273px" />
                    </td>
                    <td class="auto-style16" colspan="2" rowspan="2">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="251px" ImageUrl="~/images/2.jpg" PostBackUrl="~/Customer.aspx" Width="287px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15" colspan="2" rowspan="2">
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="240px" ImageUrl="~/images/4.jpg" PostBackUrl="~/NewMedia.aspx" Width="270px" />
                    </td>
                    <td class="auto-style16" colspan="2" rowspan="2">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="242px" ImageUrl="~/images/1.jpg" PostBackUrl="~/NewCustomer.aspx" Width="285px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
