<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdAbout.aspx.cs" Inherits="BlogWebsite.AdAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .Panel1-3 {
            background-color: #CCCCFF;
            font-size: large;
        }

        .buttontd {
            width: 40px;
        }

        .buttons {
            font-size: x-large;
            height: 40px;
            width: 40px;
        }

        .auto-style1 {
            text-align: center;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="Panel1-3">
        <table style="width: 100%;">
            <tr>
                <td class="buttontd"><strong>
                    <asp:Button ID="btn2" runat="server" CssClass="buttons" Text="-" OnClick="btn2_Click" />
                    </strong></td>
                <td class="buttontd"><strong>
                    <asp:Button ID="btn1" runat="server" CssClass="buttons" Text="+" OnClick="btn1_Click" />
                    </strong></td>
                <td style="text-align: center;">ABOUT</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div style="text-align:center">
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="408px" TextMode="MultiLine" Width="570px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnUpdate" runat="server" CssClass="fb8" Font-Bold="True" Font-Size="20pt" Height="64px" Text="UPDATE" Width="233px" OnClick="btnUpdate_Click" />
            <br />
            <br />
        </div>
    </asp:Panel>
</asp:Content>
