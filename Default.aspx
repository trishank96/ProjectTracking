<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenttitle" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 33px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 420px;
        }
        .auto-style4 {
            height: 29px;
            width: 311px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <form id="form1" runat="server" class="auto-style3">
        Welcome to Project Tracking System
        <br>
        <br>
        <br>
        <br>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Label ID="Message_label" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Enter Mode of Registration"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter user mode"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="228px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>BDO</asp:ListItem>
                        <asp:ListItem>Project Manager (PM)</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                        <asp:ListItem>Client</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

