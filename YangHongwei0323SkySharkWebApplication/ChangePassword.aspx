<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="YangHongwei0323SkySharkWebApplication.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Changing Password For:"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                      </td>
                    <td>
                        <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox>
                      </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextPassword" ErrorMessage="Please specify a vaild password"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
                      </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextConfirm" runat="server" TextMode="Password"></asp:TextBox>
                      </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextConfirm" EnableViewState="False" ErrorMessage="Please specify a vaild Confirm Password"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The passwords specified by you do not match.Please try again." ControlToCompare="TextPassword" ControlToValidate="TextConfirm"></asp:CompareValidator>
                      </td>
                </tr>
                  <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                      </td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
