<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenttitle" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 491px;
        }
        .auto-style2 {
            height: 244px;
        }
        .auto-style3 {
            height: 83px;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            height: 28px;
            width: 209px;
        }
        .auto-style6 {
            height: 83px;
            width: 209px;
        }
        .auto-style7 {
            height: 244px;
            width: 209px;
        }
        .auto-style8 {
            height: 28px;
            width: 579px;
        }
        .auto-style9 {
            height: 83px;
            width: 579px;
        }
        .auto-style10 {
            height: 244px;
            width: 579px;
        }
        .auto-style11 {
            width: 100%;
            height: 371px;
            margin-left: 0;
            background-color: indianred;
        }
        .auto-style12 {
            height: 36px;
        }
        .auto-style13 {
            height: 32px;
        }
        .auto-style14 {
            height: 29px;
        }
        .auto-style15 {
            height: 29px;
            width: 214px;
        }
        .auto-style16 {
            height: 32px;
            width: 214px;
        }
        .auto-style18 {
            height: 36px;
            width: 214px;
        }
        .auto-style20 {
            width: 214px;
            height: 41px;
        }
        .auto-style21 {
            height: 41px;
        }
        .auto-style24 {
            margin-top: 0;
        }
        .auto-style25 {
            height: 95px;
        }
        .auto-style26 {
            width: 214px;
            height: 95px;
        }
        .auto-style27 {
            height: 34px;
        }
        .auto-style28 {
            height: 34px;
            width: 214px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style8"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style9" align="center">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Log In"></asp:Label>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style10">
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="UnameLabel" runat="server" Font-Bold="True" Font-Size="Large" Text="User Name"></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="209px"></asp:TextBox>
                            </td>
                            <td class="auto-style14">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This Field is Required" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13"></td>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style13"></td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Designation"></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style24" Height="40px" Width="211px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>BDO</asp:ListItem>
                                    <asp:ListItem>Developer</asp:ListItem>
                                    <asp:ListItem>Project Manager(PM)</asp:ListItem>
                                    <asp:ListItem>Client</asp:ListItem>
                                    <asp:ListItem>HR</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style21">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Field is Required" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style12"></td>
                        </tr>
                        <tr>
                            <td class="auto-style27">
                                <asp:Label ID="PassLabel" runat="server" Font-Bold="True" Font-Size="Large" Text="Password"></asp:Label>
                            </td>
                            <td class="auto-style28">
                                <asp:TextBox ID="TextBox3" runat="server" Height="24px" TextMode="Password" Width="209px"></asp:TextBox>
                            </td>
                            <td class="auto-style27">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Field is Required" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25"></td>
                            <td class="auto-style26" align="center">
                                <asp:Label ID="Message_Label" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#3333CC"></asp:Label>
                            </td>
                            <td class="auto-style25"></td>
                        </tr>
                        <tr>
                            <td class="auto-style25"></td>
                            <td class="auto-style26" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Font-Size="Medium" Text="Log In" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style25"></td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </form>
</asp:Content>