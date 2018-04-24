<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Client_details.aspx.cs" Inherits="Client_details" %>

<%-- Add content controls here --%>
<asp:Content ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 153px;
            height: 52px;
        }
        .auto-style2 {
            width: 198px;
            height: 52px;
        }
        .auto-style3 {
            width: 100px;
            height: 52px;
        }
        #form1 {
            height: 492px;
        }
    </style>

</asp:Content>
<asp:Content ContentPlaceHolderID="ContentBody" runat="server">
     <form id="form1" runat="server">
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <table align="center" style="z-index: 104; left: 177px; position: absolute; top: 384px; height: 356px;">
        <tr>
            <td style="width: 153px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Client-Id" Width="117px"></asp:Label></td>
            <td style="width: 198px">
    <asp:TextBox ID="Client_id" runat="server" Width="169px" Height="21px"></asp:TextBox></td>
            <td style="width: 100px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="Username  Cannot Blank" Height="22px" Width="158px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 153px; height: 24px">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" Text="Client Password"
                    Width="111px"></asp:Label></td>
            <td style="width: 198px; height: 24px">
    <asp:TextBox ID="Client_pass" runat="server" Width="169px" TextMode="Password" Height="20px"></asp:TextBox></td>
            <td style="width: 100px; height: 24px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Password Cannot Empty" Width="156px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 153px">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Client Name" Width="117px"></asp:Label></td>
            <td style="width: 198px">
    <asp:TextBox ID="Client_name" runat="server" Width="167px" Height="23px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        
        <tr>
            <td style="width: 153px">
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Gender" Width="114px"></asp:Label></td>
            <td style="width: 198px">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
        RepeatLayout="Flow"
        Width="171px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td>
             <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Client Organisation"
                    Width="111px"></asp:Label></td>
            <td style="width: 198px; height: 24px">
    <asp:TextBox ID="ClientComp" runat="server" Width="169px" Height="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
             <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Text="Client Address"
                    Width="111px"></asp:Label></td>
            <td style="width: 198px; height: 24px">
    <asp:TextBox ID="ClientAdd" runat="server" Width="191px" TextMode="MultiLine" Height="55px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 153px">
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="PhoneNo" Width="117px"></asp:Label></td>
            <td style="width: 198px">
    <asp:TextBox ID="Client_phone" runat="server" Width="167px" style="height: 20px"></asp:TextBox></td>
            <td style="width: 100px">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
        ErrorMessage="Invalid PhoneNumber" ValidationExpression="\d{9}" Width="160px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 153px">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="EmailId" Width="117px"></asp:Label></td>
            <td style="width: 198px">
    <asp:TextBox ID="Client_email" runat="server" Width="167px" Height="21px"></asp:TextBox></td>
            <td style="width: 100px">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4"
        ErrorMessage="Invalid EmailAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="160px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 153px">
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Project Id" Width="117px"></asp:Label></td>
            <td style="width: 198px">
    <asp:TextBox ID="Project_ID" runat="server" Width="166px" Height="22px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Project Desc" Width="116px"></asp:Label></td>
            <td class="auto-style2">
    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="165px"></asp:TextBox>&nbsp;
            </td>
            <td class="auto-style3">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 63px">
                <asp:Label ID="Label10" runat="server" Width="141px"></asp:Label>
    <asp:Button ID="Add_button" runat="server" Style="z-index: 100; left: 145px; position: absolute;
        top: 384px; right: 311px;" Text="ADD" Width="63px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Reset_button" runat="server" Style="z-index: 100; left: 271px; position: absolute;
        top: 385px" Text="Reset" Width="63px" OnClick="Button1_Click" />
                </td>
        </tr>
    </table>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/"
        Style="z-index: 102; left: 737px; position: absolute; top: 375px">back</asp:HyperLink>
    <br>
    <br>
    <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 101; left: 0px; position: absolute;
        top: 0px">HyperLink</asp:HyperLink>
    &nbsp;&nbsp;<br>
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
     </form>
</asp:Content>