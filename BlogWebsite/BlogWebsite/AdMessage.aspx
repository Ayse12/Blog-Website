<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdMessage.aspx.cs" Inherits="BlogWebsite.AdMessage" %>

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

        .CategoryNameList {
            text-align: left;
            position: absolute;
        }

        .imagePlace {
            text-align: right;
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
                <td style="text-align: center;">MESSAGE LİST</td>
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
                        <td class="auto-style1">
                            <a href="AdMessageDetails.aspx?MessageID=<%#Eval("MessageID") %>">
                                <asp:Image ID="imgMessage" runat="server" Height="40px" ImageUrl="~/image/MessageDetails.png" Width="40px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
