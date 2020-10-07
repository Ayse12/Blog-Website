<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdMessageDetails.aspx.cs" Inherits="BlogWebsite.AdMessageDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .table {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>Name Surname :</strong></td>
            <td>
                <asp:TextBox ID="txtNameSur" runat="server" Height="30px" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>Email :</strong></td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="300px" TextMode="Email" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>Topic :</strong></td>
            <td>
                <asp:TextBox ID="txtTpc" runat="server" Height="30px" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>Content :</strong></td>
            <td>
                <asp:TextBox ID="txtContent" runat="server" Height="150px" TextMode="MultiLine" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style10"></td>
            <td >&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
