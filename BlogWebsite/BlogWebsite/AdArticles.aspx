<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdArticles.aspx.cs" Inherits="BlogWebsite.AdArticles" %>

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

        .auto-style4 {
            background-color: #1A78E0;
        }

        .auto-style5 {
            color: #FFFFFF;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnl1" runat="server" CssClass="Panel1-3 ">
        <table style="width: 100%;">
            <tr>
                <td class="buttontd"><strong>
                    <asp:Button ID="btn2" runat="server" CssClass="buttons" Text="-" OnClick="btn2_Click" />
                </strong></td>
                <td class="buttontd"><strong>
                    <asp:Button ID="btn1" runat="server" CssClass="buttons" Text="+" OnClick="btn1_Click" />
                </strong></td>
                <td style="text-align: center;">ARTICLE LİST</td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel runat="server">
        <asp:Panel ID="pnl2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="595px">
                <ItemTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td class="TitleList">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("Title") %>'></asp:Label>
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

    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" BorderStyle="None" CssClass="auto-style4">
        <div class="auto-style5">v</div>
    </asp:Panel>
    <asp:Panel ID="pnl3" runat="server" CssClass="Panel1-3 ">
        <table style="width: 100%;">
            <tr>
                <td class="buttontd"><strong>
                    <asp:Button ID="btn3" runat="server" CssClass="buttons" Text="-" OnClick="btn3_Click" />
                </strong></td>
                <td class="buttontd"><strong>
                    <asp:Button ID="btn4" runat="server" CssClass="buttons" Text="+" OnClick="btn4_Click" />
                </strong></td>
                <td style="text-align: center;">ARTICLE ADD</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="pnl4" runat="server">
        <table style="width: 100%;">
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="imagePlace"><strong>Article Title :</strong></td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="imagePlace"><strong>Content</strong> :</td>
                <td>
                    <asp:TextBox ID="txtContent" runat="server" Width="300px" Height="250px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="imagePlace"><strong>Image:</strong></td>
                <td>
                    <asp:FileUpload ID="fluImg" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="imagePlace"><strong>Point :</strong></td>
                <td>
                    <asp:TextBox ID="txtPoint" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="imagePlace"><strong>Category Name :</strong></td>
                <td>
                    <asp:DropDownList ID="dlisCategory" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnAdded" runat="server" CssClass="btnEkle" Height="40px" Text="ADD" Width="100px" OnClick="btnAdded_Click" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
