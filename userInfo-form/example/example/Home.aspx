<%@ Page Language="C#" 
    AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="example.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            width: 416px;
        }
        .auto-style2 {
            width: 100px;
        }
        .auto-style3 {
            height: 23px;
            width: 100px;
        }
        .auto-style4 {
            width: 416px;
        }
    </style>
</head>
<body style="width: 559px">
    <form id="form1" runat="server">
        <input type="hidden" id="hiddenCount" value="0" runat="server" />
        <div>
           <h2>Please enter your information:</h2>
     
        </div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbName" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" ErrorMessage="Name is a required field" ForeColor="#990000">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tbName" ErrorMessage="The name must be contient onlly characteres" ForeColor="#FF3300" Operator="DataTypeCheck">*</asp:CompareValidator>
            </td>
        
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Date of Brith"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tbDateOfBirth" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbDateOfBirth" ErrorMessage="Date is a required field" ForeColor="#990000">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbDateOfBirth" ErrorMessage="This is not a valid date of birth." ForeColor="#FF3300" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
            </td>
       
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbEmail" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is a required field" ForeColor="#990000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="This is not a valid email" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
            
        </tr>
         <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Province"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="dplProvince" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dplProvince_SelectedIndexChanged" Height="18px" Width="150px">
                    <asp:ListItem Value="">select one</asp:ListItem>
                    <asp:ListItem>Quebec</asp:ListItem>
                    <asp:ListItem>Ontario</asp:ListItem>
                    <asp:ListItem>Alberta</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dplProvince" ErrorMessage="Province is a required field" ForeColor="#990000">*</asp:RequiredFieldValidator>
             </td>
            
        </tr>
         <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="dplCity" runat="server" Height="16px" Width="150px">
                </asp:DropDownList>
             </td>
            
        </tr>
         <tr>
            <td class="auto-style2">
               
                Result</td>
            <td class="auto-style4">
                <asp:Label ID="lblResult" runat="server"></asp:Label>
             </td>
            
        </tr>
        <tr><td>Count</td>
            <td>
                <asp:Label ID="lblCount" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td></td>
            <td class="auto-style2">
            <asp:Button ID="btnSubmit" runat="server" BackColor="#0066FF" Text="Submit" OnClick="btnSubmit_Click" />
            </td></tr>
        <tr>
            
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#990000" Width="214px" />
            </td>
            <td class="auto-style2">
                &nbsp;</td></tr>
        <tr>
            
            <td colspan="2">
                <asp:ListBox ID="lbxUser" runat="server" Width="109px"></asp:ListBox>
            </td>
           </tr>
    </table>
    </form>
    </body>
</html>
