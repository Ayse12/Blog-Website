<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdComment.aspx.cs" Inherits="BlogWebsite.AdComment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Panel1-3 {
            background-color: #CCCCFF;
            font-size: large;
        }

        .imagePlace {
            text-align: right;
        }

        .CategoryNameList {
            text-align: left;
            position: absolute;
        }

        .buttons {
            font-size: x-large;
            height: 40px;
            width: 40px;
        }

        .buttontd {
            width: 40px;
        }

        .btnEkle {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: large;
            font-weight: bold;
        }


        .auto-style3 {
            font-size: large;
        }

        .TitleList {
            text-align: left;
            position: absolute;
        }

        .auto-style6 {
            width: 40px;
            height: 44px;
        }

        .auto-style7 {
            height: 44px;
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
                <td style="text-align: center;">CONFIRMED COMMENTS</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="594px">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="CategoryNameList">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("NameSurname") %>'></asp:Label>
                        </td>
                        <td class="imagePlace">
                            <asp:Image ID="ımgDelete" runat="server" Height="40px" ImageUrl="~/image/delete.png" Width="40px" />
                        </td>
                        <td class="imagePlace">
                            <asp:Image ID="ımgUpdate" runat="server" Height="40px" ImageUrl="~/image/update.png" Width="40px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="Panel1-3">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="buttons" Text="-" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="buttons" Text="+" OnClick="Button4_Click" />
                </strong></td>
                <td style="text-align: center;" class="auto-style7">ARTICLE LİST</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList3" runat="server" Width="595px">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="TitleList">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("NameSurname") %>'></asp:Label>
                        </td>
                        <td style="text-align: right;">
                            <a href="AdArticles.aspx?ID=<%# Eval("ID") %>&process=delete">
                                <asp:Image ID="Image4" runat="server" Height="40px" Width="40px" ImageUrl="~/image/delete.png" />
                            </a></td>
                        <td style="text-align: right;">
                            <a href="ArticleDetails.aspx?ID=<%# Eval("ID") %>">
                                <asp:Image ID="Image3" runat="server" Height="40px" Width="40px" ImageUrl="~/image/update.png" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
