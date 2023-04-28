<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="YangHongwei0323SkySharkWebApplication._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <h1>Welcome to SkyAirLines Home Page</h1>
    <asp:Image runat="server" ID="Image1" ImageUrl="~/skyShark.png" Width="850px" Height="260px"/>
    <p>
        Launched in 1999,SkyShark Airlines is a United States-based airline that has rapidly grown in the past years.
    </p>

    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red" Text=""></asp:Label>
                    </td>
                    <td></td>
                 
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextUsername" ErrorMessage="Please Specify a Valid Username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPassword" ErrorMessage="Please Specify a Valid Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                   <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" />
                       </td>
                    <td></td>
                </tr>
                   <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

            </table>
        </div>
    </form>

</asp:Content>
