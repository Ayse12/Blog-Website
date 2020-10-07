<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdArticleDetails.aspx.cs" Inherits="BlogWebsite.ArticleDetails1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btnEkle {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: large;
            font-weight: bold;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnl4" runat="server">
        <table style="width: 100%;">
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td style="text-align: right"><strong>Article Title :</strong></td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right"><strong>Content</strong> :</td>
                <td>
                    <asp:TextBox ID="txtContent" runat="server" Width="300px" Height="250px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right"><strong>Image:</strong></td>
                <td>
                    <asp:FileUpload ID="fluImg" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right"><strong>Point :</strong></td>
                <td>
                    <asp:TextBox ID="txtPoint" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right"><strong>Category Name :</strong></td>
                <td>
                    <asp:DropDownList ID="dlisCategory" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3"><strong>
                    <asp:Button ID="btnUpdate" runat="server" CssClass="btnEkle" Height="40px" Text="UPDATE" Width="199px" OnClick="btnUpdate_Click" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3"><strong>
                    <asp:Button ID="btnChoise" runat="server" CssClass="btnEkle" Height="40px" Text="CHOISE ARTICLE" Width="214px" OnClick="btnChoise_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
