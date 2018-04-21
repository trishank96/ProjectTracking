<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DevHomepage.aspx.cs" Inherits="DevHomepage" %>

<%-- Add content controls here --%>
<asp:Content ContentPlaceHolderID="Contenttitle" runat="server">

</asp:Content>
<asp:Content ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 64px;
        }
        .auto-style9 {
            height: 53px;
        }
        .auto-style10 {
            height: 147px;
        }
    </style>

</asp:Content>
<asp:Content ContentPlaceHolderID="ContentBody" runat="server">

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style10" align="center">
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Menu ID="Menu2" runat="server" >
                        <Items>
                            <asp:MenuItem NavigateUrl="#" Text="Modules" Value="Modules"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="#" Text="TimeSheet" Value="TimeSheets"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="#" Text="Project Status" Value="Project Status">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="#" Text="Do You Have Any Queries Please Mail Here"
                Value="Do You Have Any Queries Please Mail Here"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
           </table>
    </form>

</asp:Content>