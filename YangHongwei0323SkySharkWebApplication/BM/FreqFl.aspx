<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FreqFl.aspx.cs" Inherits="YangHongwei0323SkySharkWebApplication.BM.FreqFl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Busniess Manager
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="form1" runat="server" >
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
              <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/BM/AddFI.aspx"  Text="Add Filght" Value="Add Filght"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/FreqFl.aspx" Selected="True" Text="Frequent Fliers" Value="Frequent Fliers"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White"/>
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div class="auto-style2">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Frequent Flight"></asp:Label>
                    </td>
                    <td></td>
                  
                </tr>
                 <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
                      </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Log Off</asp:HyperLink>
                      </td>
                </tr>
                <tr>
                    <td>text1<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
                    <td>text2<asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                        text3
                    </td>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td>text1<asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
                    <td>text2<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        text3
                    </td>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Button" Width="268px" />
                    </td>
                    <td></td>
                </tr>
                 <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" Width="480px">
                        </asp:GridView>
                     </td>
                 
                </tr>
                </table>
            </div>
          </form>
</asp:Content>
