<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BlogWebsite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .table {
            width: 100%;
        }

        .auto-style9 {
            font-size: xx-large;
            color: #FF0066;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center;">
        <p class="auto-style9"><strong><em>MESASSAGE BOX</em></strong></p>
    </div>
    <table class="table">
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
            <td class="auto-style10">
                <strong>
                    <asp:Button ID="btnSend" runat="server" Height="40px" Text="Send Your Message" Width="194px" CssClass="fb8" OnClick="btnSend_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
