<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="YangHongwei0323SkySharkWebApplication.NA.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Network Administrator
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
               <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem  NavigateUrl="~/NA/ManageUsers.aspx" Text="Manage Users" Selected="true" Value="Manage Users"></asp:MenuItem>
                <asp:MenuItem  NavigateUrl="~/NA/ManageDatabase1.aspx" Text="Manage Database" Value="Manage Database"></asp:MenuItem>
            </Items>
             <StaticHoverStyle BackColor="#7C6F57" ForeColor="White"/>
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
    <div class="tabContents">
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="txtUser" runat="server" Text="Manage User Account"></asp:Label></td>
                <td></td>
                <td></td>
            </tr>
             <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                <td class="auto-style1">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Delete Username"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtDeleteUsername" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                <td></td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
            </tr>
                <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox></td>
                <td></td>
                <td></td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Role"></asp:Label></td>
                <td>
                    <asp:ListBox ID="listRole" runat="server" Height="59px" Width="115px">
                        <asp:ListItem>BM</asp:ListItem>
                        <asp:ListItem>NA</asp:ListItem>
                        <asp:ListItem>LOB</asp:ListItem>
                    </asp:ListBox>
                  </td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
    </form>
    </asp:Content>
