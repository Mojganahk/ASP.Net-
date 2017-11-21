<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PriceQuotation.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 209px;
        }
        .auto-style3 {
            width: 209px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td rowspan="10">&nbsp;</td>
                    <td class="auto-style2"><strong>Price Quotation</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Sales Price</td>
                    <td>
                        <asp:TextBox ID="tbSalesPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Discount Percent</td>
                    <td>
                        <asp:TextBox ID="tbDiscountPercent" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbDiscountPercent" ErrorMessage="percent must be btw 0 to 100" ForeColor="Fuchsia" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Discount Amount</td>
                    <td>
                        <asp:Label ID="lbDiscountAmount" runat="server" Text="lbDiscountAmount"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Total Price</td>
                    <td>
                        <asp:Label ID="lbTotalPrice" runat="server" Text="lbTotalPrice"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btCalculate" runat="server" OnClick="btCalculate_Click" Text="Calculate" Width="158px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
