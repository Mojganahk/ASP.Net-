<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="example.controls.WebUserControl1" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 132px;
    }
    .auto-style2 {
        width: 318px;
    }
    .auto-style3 {
        width: 166px;
        height: 167px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td>
            <img alt="" class="auto-style3" src="../images/1.png" /></td>
        <td class="auto-style2">HELLO CORP.</td>
        <td>
            <asp:Label ID="lbCurrent" runat="server"></asp:Label>
        </td>
    </tr>
</table>

