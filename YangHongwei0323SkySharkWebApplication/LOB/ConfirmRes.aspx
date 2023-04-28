<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConfirmRes.aspx.cs" Inherits="YangHongwei0323SkySharkWebApplication.LOB.ConfirmRes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
               <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx" Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/CancelRes.aspx" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/QueryStat.aspx" Text="Quary Status" Value="Quary Status"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/ConfirmRes.aspx" Text="Confirm Reservation" Value="Confirm Reservation" Selected="true"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
          <div class="tabContents">
                               <table>
                              <tr>
                                  <td>
                                      <asp:Label ID="Label6" runat="server" Text="Confirm a Reservation"></asp:Label></td>
                                  <td></td>
                                  <td></td>
                              </tr>
                              <tr>
                              <td></td>
                              <td>
                              <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                              <td>
                              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logoff.aspx">Log Off</asp:HyperLink></td>
                     
                                 </tr>
                                 <tr>
                                  <td>
                                      <asp:Label ID="Label7" runat="server" Text="Ticket No"></asp:Label></td>
                                  <td>
                                      <asp:TextBox ID="txtNo" runat="server"></asp:TextBox></td>
                                  <td></td>
                              </tr>
                                 <tr>
                                  <td></td>
                                  <td>
                                      <asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>
                                  <td></td>
                              </tr>
                          </table>
            </div>
    </form>
</asp:Content>
