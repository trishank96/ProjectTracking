<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ClientHome.aspx.cs" Inherits="ClientHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenttitle" Runat="Server">
    Client Homepage
    <script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            z-index: 102;
            left: 53px;
            position: absolute;
            top: 363px;
        }
        .auto-style2 {
            z-index: 101;
            left: 157px;
            position: absolute;
            top: 397px;
        }
        .auto-style3 {
            z-index: 103;
            left: 159px;
            position: absolute;
            top: 445px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    &nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" Height="24px" NavigateUrl="~/projectstatuspage.aspx" Width="279px" CssClass="auto-style2" style="margin-top: 41">Check The Project Status Please Click Here</asp:HyperLink>
    &nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Width="312px" CssClass="auto-style1"></asp:Label>
    &nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CheckMail.aspx" Width="276px" CssClass="auto-style3">Do You Have Any Queries Please Mail Here</asp:HyperLink>
    &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<%-- Add content controls here --%>
