<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/User.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BlogWebsite.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: xx-large;
            text-align: center;
        }

        .label {
            font-size: large;
        }

        .table {
            width: 100%;
        }

        .auto-style10 {
            font-size: x-large;
        }

        .datalist {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
        <strong>ABOUT US
        </strong>
    </p>
    <asp:DataList ID="DataList2" runat="server" CssClass="datalist">
        <ItemTemplate>
            <table class="table">
                <tr style="margin-left: 20px; margin-right: 20px;">
                    <td style="text-align: center;">
                        <asp:Image ID="Image1" runat="server" Height="200px" Width="500px" ImageUrl="~/image/blog.png" />
                    </td>
                    <br />
                </tr>
            </table>
            <table  style="margin-left: 20px; margin-right: 20px;">
                <tr>
                    <td style="text-align: justify;">
                        <p style="text-indent: 15px;">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("AboutMe") %>' CssClass="auto-style10"></asp:Label>
                        </p>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
