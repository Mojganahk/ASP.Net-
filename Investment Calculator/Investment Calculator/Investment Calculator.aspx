<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Investment Calculator.aspx.cs" Inherits="Investment_Calculator.Investment_Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 476px; width: 1225px">
            <br />
            <asp:Label ID="lbValueOfMonthlyInvestment" runat="server" Text="Value of Monthly Investment :" style="font-weight: 700"></asp:Label>
            <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" EnableTheming="True" OnSelectedIndexChanged="ddlMonthlyInvestment_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lbAnnualInterestRate" runat="server" Text="Annual Interest Rate : " style="font-weight: 700"></asp:Label>
            <asp:TextBox ID="tbAnnualInterestRate" runat="server"></asp:TextBox>
            <br />
            <br />
              <asp:Label ID="lbNumberOfYears" runat="server" Text="Number Of Years : " style="font-weight: 700"></asp:Label>
            <asp:TextBox ID="tbNumberOfYears" runat="server"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Interest Rate has to be btw 1 to 20" ControlToValidate="tbAnnualInterestRate" ForeColor="#FF0066" MaximumValue="20" MinimumValue="1" style="font-weight: 700" Type="Double"></asp:RangeValidator><br />

            <br />
            <br />
            <br />
            <br />

            <asp:Button ID="btnCalculate" runat="server" Height="29px" Text="Calculate" Width="122px" />
            <asp:Button ID="btnClear" runat="server" Height="29px" Text="Clear" Width="122px" />

        </div>
    </form>
</body>
</html>
