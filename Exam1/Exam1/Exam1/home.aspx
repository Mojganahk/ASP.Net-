<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Exam1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 82%;
            height: 578px;
        }
        .auto-style2 {
            width: 190px;
        }
        .auto-style3 {
            width: 507px;
        }
        .auto-style4 {
            width: 331px;
        }
        .auto-style8 {
            width: 190px;
            height: 88px;
        }
        .auto-style9 {
            width: 507px;
            height: 88px;
        }
        .auto-style10 {
            width: 331px;
            height: 88px;
        }
        .auto-style11 {
            width: 190px;
            height: 42px;
        }
        .auto-style12 {
            width: 507px;
            height: 42px;
        }
        .auto-style13 {
            width: 331px;
            height: 42px;
        }
        .auto-style14 {
            width: 190px;
            height: 112px;
        }
        .auto-style15 {
            width: 507px;
            height: 112px;
        }
        .auto-style16 {
            width: 331px;
            height: 112px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
           
            <tr>
                <td class="auto-style2">Student Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbStudentName" runat="server" Width="234px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbStudentName" ErrorMessage="Name is a required field" ForeColor="#990000">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tbStudentName" ErrorMessage="The name must be contient onlly characteres" ForeColor="#FF3300" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbEmail" runat="server" Width="231px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is a required field" ForeColor="#990000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="This is not a valid email" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>


                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Confirm Email Address</td>
                <td class="auto-style12">
                    <asp:TextBox ID="tbConfirmEmail" runat="server" Width="231px"></asp:TextBox>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style2">Date of Birth</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbBDate" runat="server" Width="232px"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbBDate" ErrorMessage="Date is a required field" ForeColor="#990000">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbBDate" ErrorMessage="This is not a valid date of birth." ForeColor="#FF3300" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Class</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlClass"   runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged"  Width="238px">
                                               
                         <asp:ListItem Value="">select one</asp:ListItem>
                        <asp:ListItem>Freshman</asp:ListItem>
                        <asp:ListItem>Sophomore</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredField" runat="server" ControlToValidate="ddlClass" ErrorMessage="class is a required field" ForeColor="#990000">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Final Grade</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbFinalGrade" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Alerts</td>
                <td class="auto-style9">
                    Error Message
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">student Information</td>
                <td class="auto-style4">Grade</td>
            </tr>
            <tr>
                <td class="auto-style14">Student Details</td>
                <td class="auto-style15">
                    <asp:TextBox ID="tbStInfo" runat="server" Height="81px" Width="488px"></asp:TextBox>
                    <asp:Button ID="btnAddSt" runat="server" Height="26px" OnClick="btnAddSt_Click" Text="Add Student &amp; Calculate Average" Width="217px" />
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="tbGrade" runat="server" Height="48px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Class Average Class</td>
                <td class="auto-style3">
                    <asp:Label ID="lblClassAverage" runat="server" Text="0.0"></asp:Label>
                    *</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
