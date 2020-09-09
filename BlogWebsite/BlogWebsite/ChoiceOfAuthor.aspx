<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ChoiceOfAuthor.aspx.cs" Inherits="BlogWebsite.ChoiceOfAuthor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .title {
            font-size: xx-large;
            font-weight: 700;
            text-align: center;
        }

        .content {
            font-size: small;
            text-align: justify;
        }

        .image {
            height: 200px;
            width: 500px;
        }

        .Datalist {
            width: 100%;
        }

        .auto-style7 {
            font-size: medium;
        }

        .auto-style8 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList2" runat="server" CssClass="Datalist">
        <ItemTemplate>
            <table style="width: 100%;">
                <tr>
                    <td style="text-align: center;">
                        <asp:Label ID="Label3" runat="server" CssClass="title" Text='<%# Eval("Title") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table style="width: 100%">
                <tr>
                    <td style="text-align: center;">
                        <asp:Image ID="Image1" runat="server" CssClass="image" ImageUrl='~/image/EscapeFromPretoria.png' />
                    </td>
                </tr>
            </table>
            <br />
            <table style=" margin-left: 15px; margin-right: 15px;">
                <tr style="">
                    <td style="text-align: justify;">
                        <p style="text-indent: 50px;">
                            <asp:Label ID="Label5" runat="server" CssClass="content" Text='<%# Eval("Contents") %>'></asp:Label>
                        </p>
                    </td>
                </tr>
            </table>
            <br />
            <table style="width: 100%">
                <tr>
                    <td style="text-align: left">
                        <p style="text-indent: 25px;">
                            <span class="auto-style7"><strong>My Point = &gt; </strong></span><span class="auto-style8">10</span><span class="auto-style7">/ </span></strong>
                            <asp:Label ID="Label6" runat="server" CssClass="content" Text='<%# Eval("Point") %>'></asp:Label>
                        </p>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table style="width: 100%">
                <tr>
                    <td style="text-align: left;">
                        <p style="text-indent: 25px; font-size: small;">
                            <strong>Date</strong> <strong>:</strong>
                            <asp:Label ID="Label7" runat="server" CssClass="content" Text='<%# Eval("Date") %>'></asp:Label>
                        </p>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
