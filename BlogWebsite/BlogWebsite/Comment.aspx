<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Comment.aspx.cs" Inherits="BlogWebsite.Comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            font-size: xx-large;
            margin-left: 0px;
        }

        .auto-style3 {
            width: 72px;
        }

        .auto-style4 {
            font-size: xx-large;
        }

        .auto-style5 {
            text-align: center;
            font-size: large;
        }

        .auto-style6 {
            font-size: large;
            text-align: left;
            position: absolute;
            
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            width: 348px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="50px" Text="+" Width="50px" OnClick="Button1_Click" />
                </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style2" Height="50px" Text="-" Width="50px" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style5">CONFIRMED COMMENTS</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="596px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("NameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:Image ID="Image4" runat="server" Height="40px" ImageUrl="~/image/delete.png" Width="40px" />
                        </td>
                        <td class="auto-style7">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/image/update.png" Width="40px" />
                            a</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Height="50px" Text="+" Width="50px" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style2" Height="50px" Text="-" Width="50px" />
                    </strong></td>
                <td class="auto-style5">NOT CONFIRMED COMMENTS</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="600px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("NameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:Image ID="Image4" runat="server" Height="40px" ImageUrl="~/image/delete.png" Width="40px" />
                        </td>
                        <td class="auto-style7">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/image/update.png" Width="40px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
