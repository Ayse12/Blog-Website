<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ArticleDetails.aspx.cs" Inherits="BlogWebsite.ArticleDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: xx-large;
            color: #FFCCFF;
        }

        .auto-style10 {
            width: 100%;
        }

        .NameSurname {
            font-size: x-large;
            color: #CCCCFF;
            margin-left: 10px;
            margin-right: 10px;
        }

        .auto-style12 {
            font-size: medium;
            margin-left: 10px;
            margin-right: 10px;
        }

        .auto-style13 {
            font-size: x-small;
            margin-left: 10px;
            margin-right: 10px;
        }

        .datalist {
            text-align: left;
        }

        .divComment {
            color: #FF99FF;
            background-color: #660066;
        }

        .auto-style14 {
            width: 100%;
            height: 83px;
        }
        .auto-style15 {
            font-size: medium;
            font-weight: bold;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="menutd">
        <strong>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
        </strong>
    </p>
    <asp:DataList ID="DataList2" runat="server" Width="100%" CssClass="">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td style="text-align: justify;">
                        <asp:Label ID="Label4" runat="server" CssClass="NameSurname" Text='<%# Eval("NameSurname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <strong>
                        <td>&nbsp;</td>
                    </strong>
                </tr>
                <tr>
                    <td style="text-align: justify;">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text='<%# Eval("CommentContent") %>'></asp:Label>
                        &nbsp;-
                                <asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text='<%# Eval("Date") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thin">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="divComment">COMMENT PANEL</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style14">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Name Surname : </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Comment :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td ><strong>
                    <asp:Button ID="btnComment" runat="server" CssClass="auto-style15" Height="40px" Text="Comment Send" OnClick="btnComment_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
