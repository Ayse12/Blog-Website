<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/User.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BlogWebsite.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tablesize {
            width: 100%;
        }

        .title {
            font-size: x-large;
        }

        .content {
            font-size: large;
            text-align: justify;
        }

        .image {
            height: 200px;
            width: 500px;
        }

        .Datalist {
            width: 100%;
        }

        .auto-style9 {
            width: 280px;
        }

        .auto-style10 {
            width: 212px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:DataList ID="DataList2" runat="server" CssClass="Datalist">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td style="text-align: center; background-color: #B987D3;"><strong>
                            <a href="ArticleDetails.aspx?ID=<%#Eval("ID")  %>">
                                <asp:Label ID="Label3" runat="server" CssClass="title" Text='<%# Eval("Title") %>'></asp:Label>
                            </a></strong></td>
                    </tr>
                </table>
                <table style="width: 100%;">

                    <tr>
                        <td style="text-align: center;">
                            <br />
                            <asp:Image ID="Image1" runat="server" CssClass="image" ImageUrl="~/image/EscapeFromPretoria.png" />
                            <br />
                        </td>
                    </tr>
                </table>
                <table style="margin-left: 15px; margin-right: 15px;">

                    <tr>
                        <td style="text-align: justify;">
                            <p style="text-indent: 50px;">
                                <asp:Label ID="Label4" runat="server" CssClass="content" Text='<%# Eval("Contents") %>'></asp:Label>
                            </p>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%;">

                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td style="text-align: left;" class="auto-style10"><span style="font-size: medium;">My Point =&gt; </span><span style="font-size: small; background-color:transparent;">10/ </span>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Points") %>' Font-Size="Small"></asp:Label>
                                    </td>
                                    <td style="text-align: right;" class="auto-style9"><span style="font-size: medium;">Date :</span>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Date") %>' Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: outset; border-bottom-width: thick; border-bottom-color: #1818E4">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
