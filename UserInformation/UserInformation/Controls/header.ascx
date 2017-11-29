<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="UserInformation.Controls.header" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 69px;
    }
    .auto-style2 {
        height: 17px;
        text-align: left;
    }
    .auto-style3 {
        width: 69px;
        height: 72px;
    }
    .auto-style4 {
        height: 17px;
        width: 79px;
    }
    .auto-style5 {
        height: 17px;
        font-size: x-large;
        color: #33CC33;
        width: 408px;
        text-align: center;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style4">
            <img alt="" class="auto-style3" src="../Images/helloworld.png" /></td>
        <td class="auto-style5"><strong>HELLO WORLD Company</strong></td>
        <td class="auto-style2">
            <asp:Label ID="lbCurrentDate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>

