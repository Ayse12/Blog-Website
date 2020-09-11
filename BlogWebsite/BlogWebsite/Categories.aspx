<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="BlogWebsite.Categories" %>

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

        .auto-style1 {
            width: 100%;
        }

        .btnEkle {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="Panel1-3 ">
        <table style="width: 100%;">
            <tr>
                <td class="buttontd"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="buttons" OnClick="Button1_Click" Text="-" />
                </strong></td>
                <td class="buttontd"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="buttons" OnClick="Button2_Click" Text="+" />
                </strong></td>
                <td style="text-align: center;">CATEGORY LİST</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server">
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="594px">
                <ItemTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td class="CategoryNameList">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                            </td>
                            <td class="imagePlace">
                                <a href="Categories.aspx?CategoryID=<%# Eval("CategoryID") %>&process=delete">
                                    <asp:Image ID="ımgDelete" runat="server" Height="40px" ImageUrl="~/image/delete.png" Width="40px" />
                                </a></td>
                            <td class="imagePlace">
                                <a href="AdCategoryDetails.aspx?CategoryID=<%# Eval("CategoryID") %>">
                                    <asp:Image ID="ımgUpdate" runat="server" Height="40px" ImageUrl="~/image/update.png" Width="40px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="Panel1-3 ">
        <table style="width: 100%;">
            <tr>
                <td class="buttontd"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="buttons" Text="-" OnClick="Button3_Click" />
                </strong></td>
                <td class="buttontd"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="buttons" Text="+" OnClick="Button4_Click" />
                </strong></td>
                <td style="text-align: center;">CATEGORY ADD</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="imagePlace"><strong>Category Name :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="267px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="imagePlace"><strong>Category Icon :</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnAdd" runat="server" CssClass="btnEkle" Height="40px" Text="ADD" Width="100px" OnClick="btnAdd_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
