<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageDatabase1.aspx.cs" Inherits="YangHongwei0323SkySharkWebApplication.NA.ManageDatabase1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     Network Administrator
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
              <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem  NavigateUrl="~/NA/ManageUsers.aspx" Text="Manage Users" Value="Manage Users"></asp:MenuItem>
                <asp:MenuItem  NavigateUrl="~/NA/ManageDatabase1.aspx"  Selected="true"  Text="Manage Database" Value="Manage Database"></asp:MenuItem>
            </Items>
             <StaticHoverStyle BackColor="#7C6F57" ForeColor="White"/>
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
    <div class="tabContents">
        <table>
             <tr>
                <td colspan="2" class="auto-style1">
                    <asp:Label ID="txtUser" runat="server" Text="Manage Database"></asp:Label></td>
                <td class="auto-style1"></td>
                
            </tr>
              <tr>
               
                <td class="auto-style1" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                <td class="auto-style1">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
               
            </tr>

            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMessage2" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                
            </tr>
              <tr>
                <td colspan="3">
                    <asp:Button ID="btnArchive" runat="server" Text="Archive information pertaining to flights that have departed" BackColor="Silver" Width="620px" BorderColor="Blue" OnClick="btnArchive_Click1" /></td>
            </tr>
              <tr>
                <td colspan="3">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update customer information for the frequent fliers program" Width="620px" BackColor="Silver" BorderColor="Blue" OnClick="btnUpdate_Click" /></td>
            </tr>
        </table>
    </div>
         </form>
</asp:Content>
