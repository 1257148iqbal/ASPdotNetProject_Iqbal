<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ASPdotNetProject_Iqbal.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
         <table class="nav-justified">
    <tr>
        <td class="auto-style1" colspan="2">
            <strong>Trainee Registration Form</strong></td>
    </tr>
    <tr>
        <td class="text-center" colspan="2" style="height: 28px"></td>
    </tr>
    <tr>
        <td style="width: 217px; height: 22px;">
            <asp:Label ID="lblName" runat="server" Text="TraineeName"></asp:Label>
        </td>
        <td style="height: 22px">
            <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 217px">
            <asp:Label ID="lblEmail" runat="server" Text="EmailAddress"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 217px">
            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlGender" runat="server" Width="200px">
                <asp:ListItem>Choose Gender </asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 217px; height: 22px;">
            <asp:Label ID="lblDOB" runat="server" Text="Data Of Birth"></asp:Label>
        </td>
        <td style="height: 22px">
            <asp:TextBox ID="txtDOB" TextMode="Date" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 217px">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" Width="196px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 217px">&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes, I am Agree." Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server" style="color: #FF5050"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 217px; height: 20px;"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 217px">&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" Text="Submit" Width="80px" Height="30px" OnClick="btnAdd_Click" />
            &nbsp;
            &nbsp;
            </td>
    </tr>
    <tr>
        <td style="width: 217px">
            <asp:Label ID="lbltraineeID" runat="server" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 217px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 217px">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
