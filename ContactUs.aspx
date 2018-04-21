<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenttitle" Runat="Server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            z-index: 105;
            left: 552px;
            position: absolute;
            top: 371px;
            height: 350px;
        }
        .auto-style2 {
            margin-bottom: 0;
        }
        .auto-style3 {
            height: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <form id="form1" runat="server">
    <p class="h1">
        Godrej Hill</p>
    <p class="h1">
        ,Green Hills,Near Amar Restaurant<br />
            Kalyan West,<br />
            Ph No: +91-9004053463
            <br />
            <br />
             Email: <a href="mailto:swapnacm1999@gmail.com">mukherjeetrish005@gmail.com</a></p>
    
        <table border="0" cellpadding="0" cellspacing="0" valign="top" width="250" class="auto-style1">
            
                <tr>
                    <td align="middle" bgcolor="#ffcccc" class="h5" style="height: 19px" width="64%">
                        Feedback</td>
                </tr>
                <tr>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td align="left" valign="center" style="height: 19px">
                        Full Name :
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="center">
                        &nbsp;<asp:TextBox ID="Name_TextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameFieldValidator" runat="server" ControlToValidate="Name_TextBox" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="center">
                        Email ID :
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="center">
    <asp:TextBox ID="Email_Text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="MailFieldValidator" runat="server" ControlToValidate="Email_Text" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="center">
                        Contact No. :
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="center">
                        &nbsp;<asp:TextBox ID="Mobile_Text" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="MobileFieldValidator" runat="server" ControlToValidate="Mobile_Text" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="center">
                        Comments :
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="center" class="auto-style3">
                <asp:TextBox ID="Comment_Box" runat="server" Height="80px" TextMode="MultiLine" Width="245px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="middle" height="50">
                        &nbsp; &nbsp;<asp:Button ID="Submit_Button" runat="server" Text="Submit" OnClick="Button1_Click" />
                        <asp:Button ID="Reset_Button" runat="server" Text="Reset" OnClick="Button2_Click" /><asp:Label ID="Message_Label" runat="server" Width="98px" CssClass="auto-style2"></asp:Label>
                        </td>
                </tr>
           </table>
    
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
    &nbsp;<br />
    &nbsp; &nbsp;&nbsp;
    </form>
</asp:Content>
<%-- Add content controls here --%>
