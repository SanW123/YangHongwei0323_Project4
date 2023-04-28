<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddFI.aspx.cs" Inherits="YangHongwei0323SkySharkWebApplication.BM.AddFI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Manager
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
        .auto-style2 {
            border: solid 1px #507CD1;
            padding: 10PX;
            background-color: white;
            height: 425px;
            width: 631px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" >
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/BM/AddFI.aspx" Selected="True" Text="Add Filght" Value="Add Filght"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/FreqFl.aspx" Text="Frequent Fliers" Value="Frequent Fliers"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White"/>
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div class="auto-style2">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Add New Flight"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                  
                </tr>
                  <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
                      </td>
                    <td class="auto-style1">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Log Off</asp:HyperLink>
                      </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Filght Number"></asp:Label>
                      </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtFlightNumber"></asp:TextBox>
                     </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Filght Number Required" ControlToValidate="txtFlightNumber"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Departure Time"></asp:Label>
                      </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                        <asp:TextBox ID="txtDeparture" runat="server"></asp:TextBox>
                        (HH:MM)</td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Departure Time Required" ControlToValidate="txtDeparture"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Origin Place"></asp:Label>
                      </td>
                    <td>
                        <asp:TextBox ID="txtOrigin" runat="server"></asp:TextBox>
                      </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Origin Place Required" ControlToValidate="txtOrigin"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Arrival Time"></asp:Label>
                      </td>
                    <td class="auto-style1">
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                        <asp:TextBox ID="txtArrival" runat="server"></asp:TextBox>
                        (HH:MM)</td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Arrival Time Required" ControlToValidate="txtArrival"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Destination"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox></td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Destination Required" ControlToValidate="txtDestination"></asp:RequiredFieldValidator></td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Aircraft Type"></asp:Label>
                      </td>
                    <td>
                        <asp:TextBox ID="txtAircraft" runat="server"></asp:TextBox>
                      </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Aircraft Type Required" ControlToValidate="txtAircraft"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Number of seats(Executive)"></asp:Label>
                      </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtNumberOfSeats" runat="server"></asp:TextBox>
                      </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="No of Executive Seats Required" ControlToValidate="txtNumberOfSeats"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="Executive Class Fates"></asp:Label>
                      </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtExecutive" runat="server"></asp:TextBox>
                      </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Executive Class Fates Required" ControlToValidate="txtExecutive"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Number of Seats(Business)"></asp:Label>
                      </td>
                    <td>
                        <asp:TextBox ID="txtNumberOfSeats2" runat="server"></asp:TextBox>
                      </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="No of Business Seats Required" ControlToValidate="txtNumberOfSeats2"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label10" runat="server" Text="Business Class Fares"></asp:Label>
                      </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtBusiness" runat="server"></asp:TextBox>
                      </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Business Class Fares Required" ControlToValidate="txtBusiness"></asp:RequiredFieldValidator>
                      </td>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        &nbsp;&nbsp; <asp:Button ID="btnCancle" runat="server" Text="Cancle" OnClick="btnCancle_Click" />
                    </td>
                    <td class="auto-style1"></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
