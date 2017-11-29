<%@ Page 
    Language="C#"
    AutoEventWireup="true" 
    CodeBehind="Home.aspx.cs" 
    Inherits="UserInformation.Home" %>

<%@ Register src="Controls/header.ascx" tagname="header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 89px;
        }
        .auto-style6 {
            height: 23px;
            width: 176px;
        }
        .auto-style7 {
            width: 176px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style12 {
            width: 176px;
            height: 17px;
            color: #000000;
            text-align: left;
        }
        .auto-style13 {
            width: 176px;
        }
        .auto-style14 {
            width: 176px;
            height: 17px;
            font-size: x-large;
            color: #33CC33;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" defaultbutton="btnSubmit" runat="server" >
     <input type="hidden" id="hiddenCount" value="0" runat="server" />  
        <div>
            
            
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <uc1:header ID="header1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">Name</td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server" Width="120px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" ErrorMessage="Name is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tbName" ErrorMessage="Name can only have characters" ForeColor="Red" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Date of Birth</td>
                    <td>
                        <asp:TextBox ID="tbDOB" runat="server" Width="120px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbDOB" ErrorMessage="DOB is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbDOB" ErrorMessage="Not a valid date of birth" ForeColor="#FF33CC" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Email</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="tbEmail" runat="server" Width="120px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="This is not a valid email." ForeColor="Green" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Province</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlProvince" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged" Height="16px" Width="120px">
                            <asp:ListItem Value="">Select One</asp:ListItem>
                            <asp:ListItem>Quebec</asp:ListItem>
                            <asp:ListItem>Ontario</asp:ListItem>
                            <asp:ListItem>Alberta</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlProvince" ErrorMessage="Province is a required field." ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">City</td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server" Height="16px" Width="120px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Result</td>
                    <td>
                        <asp:Label ID="lbOutome" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Count</td>
                    <td class="auto-style4">
                        <asp:Label ID="lbCount" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Button ID="btnSubmit" 
                            runat="server" 
                            BackColor="#0066CC" 
                            Font-Bold="True" 
                            ForeColor="White" 
                            Text="Submit" 
                            Width="181px" OnClick="btnSubmit_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        List of User</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ListBox ID="lBoxUsers" runat="server" Width="544px"></asp:ListBox>
                        <br />
                        <br />
                        <br />
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Item1</asp:ListItem>
                            <asp:ListItem>Item 2</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
            
            
        </div>
    </form>
</body>
</html>
