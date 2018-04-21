<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenttitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 280px;
        }
    .auto-style3 {
        width: 505px;
    }
    .auto-style4 {
        width: 211px;
    }
        .auto-style5 {
            width: 280px;
            height: 28px;
        }
        .auto-style6 {
            width: 211px;
            height: 28px;
        }
        .auto-style7 {
            width: 505px;
            height: 28px;
        }
        .auto-style8 {
            width: 280px;
            height: 54px;
        }
        .auto-style9 {
            width: 211px;
            height: 54px;
        }
        .auto-style10 {
            width: 505px;
            height: 54px;
        }
        .auto-style11 {
            width: 280px;
            height: 32px;
        }
        .auto-style12 {
            width: 211px;
            height: 32px;
        }
        .auto-style13 {
            width: 505px;
            height: 32px;
        }
        .auto-style14 {
            width: 280px;
            height: 27px;
        }
        .auto-style15 {
            width: 211px;
            height: 27px;
        }
        .auto-style16 {
            width: 505px;
            height: 27px;
        }
        .auto-style17 {
            width: 280px;
            height: 41px;
        }
        .auto-style18 {
            width: 211px;
            height: 41px;
        }
        .auto-style19 {
            width: 505px;
            height: 41px;
        }
        .auto-style20 {
            height: 36px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <form runat="server">
        <table class="registar">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Registelabel" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Registration Page"></asp:Label>
                </td>
            
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="FirstN" runat="server" Font-Bold="True" Font-Size="Large" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="NameTextBox" runat="server" Height="21px" Width="225px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="NameFieldValidator" runat="server" ControlToValidate="NameTextBox" ErrorMessage="This field can not be empty" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="LnameTextBox" runat="server" Height="21px" Width="225px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="LNameFieldValidator" runat="server" ControlToValidate="LnameTextBox" ErrorMessage="This field can not be empty" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style4">
                    &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="Male"
                        GroupName="Gender" AutoPostBack="true" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" 
                        GroupName="Gender" AutoPostBack="true"  />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Date Of Birth"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="DOBTextBox" runat="server" Height="21px" Width="224px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="DOBFieldValidator" runat="server" ControlToValidate="DOBTextBox" ErrorMessage="This field can not be empty" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="DOBRangeValidator" runat="server" ControlToValidate="DOBTextBox" ErrorMessage="Enter Valid Date of Birth" Font-Size="Medium" ForeColor="Blue" MaximumValue="01/05/2000" MinimumValue="01/01/1968" Type="Date"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Address"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="AddressBox" runat="server" Height="54px" TextMode="MultiLine" Width="226px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="AddressValidator" runat="server" ControlToValidate="AddressBox" ErrorMessage="This field can not be empty" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Mobile Number"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="MobBox" runat="server" Height="21px" Width="224px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="MobileFieldValidator" runat="server" ControlToValidate="MobBox" ErrorMessage="This field can not be empty" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Email Id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="EmailTextBox" runat="server" Height="21px" Width="224px"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Company Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="ComTextBox" runat="server" Height="21px" Width="224px"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Country"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="CountryDropDown" runat="server" Height="23px" Width="229px" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID">
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [CountryMaster]"></asp:SqlDataSource>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="State"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="StateDropDown" runat="server" Height="23px" Width="229px" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ID" >
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [StateMaster] WHERE ([CountryID] = @CountryID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="CountryDropDown" Name="CountryID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Text="Designation"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="DesigDropDown" runat="server" Font-Bold="True" Height="26px" Width="230px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>BDO</asp:ListItem>
                        <asp:ListItem>Project Manager (PM)</asp:ListItem>
                        <asp:ListItem>HR</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" Text="User Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="UserTextBox" runat="server" Height="21px" Width="224px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="NameFieldValidator0" runat="server" ControlToValidate="UserTextBox" ErrorMessage="This field can not be empty" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" Text="Password"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="PassText" runat="server" Height="21px" Width="224px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="NameFieldValidator1" runat="server" ControlToValidate="PassText" ErrorMessage="This field can not be empty" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="ConfirmpasText" runat="server" Height="21px" Width="224px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:CompareValidator ID="CPassCompareValidator" runat="server" ControlToCompare="PassText" ControlToValidate="ConfirmpasText" ErrorMessage="Password does not match" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="submitBut" runat="server" Font-Bold="True" Height="30px" OnClick="Button1_Click" Text="Submit" Width="67px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="resetBut" runat="server" Font-Bold="True" Height="30px" OnClick="Button1_Click" Text="Reset" Width="67px" />
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                
            </tr>
        </table>
    </form>
</asp:Content>


