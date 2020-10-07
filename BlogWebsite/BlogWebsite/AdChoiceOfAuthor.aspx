<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdChoiceOfAuthor.aspx.cs" Inherits="BlogWebsite.AdChoiceOfAuthor" %>

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

        .TitleList {
            text-align: left;
            position: absolute;
        }


        .auto-style3 {
            font-size: large;
        }
    .auto-style4 {
        text-align: right;
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


    <asp:Panel runat="server" ID="Panel1">
        <asp:Panel ID="pnl2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="595px">
                <ItemTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td class="TitleList">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("Title") %>'></asp:Label>
                            </td>
                            
                            <td class="auto-style4">
                                <a href="ArticleDetails.aspx?ID=<%# Eval("ID") %>">
                                    <asp:Image ID="Image3" runat="server" Height="40px" Width="40px" ImageUrl="~/image/choice.png" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

    </asp:Panel>

</asp:Content>
