<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyUserControl.ascx.cs" Inherits="ASPdotNetProject_Iqbal.UserControls.MyUserControl" %>
<style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        color: #0033CC;
        font-size: large;
    }
    .auto-style2 {
        width: 137px;
    }
    </style>

<style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 137px;
    }
    .auto-style3 {
        color: #0033CC;
        font-size: large;
    }
    .auto-style4 {
        font-size: medium;
    }
    .auto-style5 {
        color: #333333;
    }
    .auto-style6 {
        color: #333333;
        font-size: large;
    }
    .auto-style7 {
        color: #333333;
        font-size: large;
        height: 51px;
    }
    .auto-style8 {
        color: #333333;
        height: 51px;
        width: 467px;
    }
    .auto-style9 {
        color: #0033CC;
        font-size: large;
        }
    .auto-style10 {
        width: 195px;
        height: 300px;
        margin-left: 0px;
    }
    .auto-style11 {
        color: #333333;
        width: 467px;
    }
    .auto-style12 {
        width: 467px;
    }
    .auto-style13 {
        font-size: x-large;
        color: #003399;
    }
</style>
<table class="auto-style1">
    <tr>
        <td class="auto-style3" colspan="4">
            <h2><strong>Trainee Information Management System</strong></h2>
        </td>
        <td class="auto-style9">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="3"><strong>
            <asp:Label ID="lblName" runat="server" CssClass="auto-style4" Text="Trainee Name"></asp:Label>
            <br />
            <asp:TextBox ID="txtName" runat="server" placeholder="Write Your Name" CssClass="auto-style4" Width="250px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </strong></td>
        <td class="auto-style11"><strong>
            <asp:Label ID="lblClass" runat="server" CssClass="auto-style4" Text="Course"></asp:Label>
            &nbsp;<br />
            <asp:TextBox ID="txtClass" runat="server" placeholder="Your Course Name" CssClass="auto-style4" Width="250px"></asp:TextBox>
            </strong></td>
        <td class="auto-style5" rowspan="5" ><img src="../images/Trainee.jpg" class="auto-style10" /></td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="3"><strong>
            <asp:Label ID="lblEmail" runat="server" CssClass="auto-style4" Text="Email Address"></asp:Label>
            </strong>
            <br />
            <strong>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email" CssClass="auto-style4" Width="250px"></asp:TextBox>
            &nbsp;</strong><asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Your Email is not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style8"><strong>
            <asp:Label ID="lblPassword" runat="server" CssClass="auto-style4" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="auto-style4" Width="250px"></asp:TextBox>
            &nbsp;</strong><asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="3"><strong>
            <asp:Label ID="lblGender" runat="server" CssClass="auto-style4" Text="Gender"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="auto-style4" Width="250px" Height="27px">
                <asp:ListItem>Choose One</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            </strong></td>
        <td class="auto-style11"><strong>
            <asp:Label ID="lblConfirmPass" runat="server" CssClass="auto-style4" Text="Confirm Password"></asp:Label>
            &nbsp;<br />
            <asp:TextBox ID="txtConfirmpass" runat="server"  placeholder="Confirm Password" CssClass="auto-style4" Width="250px"></asp:TextBox>
            &nbsp;</strong><asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" runat="server" ControlToValidate="txtConfirmpass" ErrorMessage="Confirm Pass is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorConfirmPass" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmpass" ErrorMessage="Your Password not match" ForeColor="Red">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="3"><strong>
            <asp:Label ID="lblDOB" runat="server" CssClass="auto-style4" Text="Date of Birth"></asp:Label>
            <br />
            <asp:TextBox ID="txtDate" runat="server" CssClass="auto-style4" TextMode="Date" Width="250px"></asp:TextBox>
            &nbsp;</strong><asp:RangeValidator ID="RangeValidatorDOB" runat="server" ControlToValidate="txtDate" ErrorMessage="Date of Birth must be 01-01-1990 to 01-01-2022" ForeColor="#FF3300" MaximumValue="01-01-2022" MinimumValue="01-01-1990" Type="Date">*</asp:RangeValidator>
        </td>
        <td class="auto-style11"><strong>
            <asp:CheckBox ID="CheckBoxAgree" runat="server" CssClass="auto-style4" Text="Yes, I am agree" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="3">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="4">
            <asp:Label ID="lblTid" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" Height="40px" OnClick="btnAdd_Click" Text="Add" Width="100px" BackColor="#339966" Font-Bold="True" Font-Size="14pt" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Height="40px" OnClick="btnUpdate_Click" Text="Update" Width="100px" Font-Bold="True" Font-Size="14pt" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Height="40px" OnClick="btnDelete_Click" Text="Delete" Width="100px" BackColor="#993300" Font-Bold="True" Font-Size="14pt" ForeColor="White" />
        </td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="3">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="4">&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="TraineeName" HeaderText="TraineeName" SortExpression="TraineeName" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [TraineeName], [EmailAddress], [Gender], [DOB], [Class], [Password] FROM [Trainee]"></asp:SqlDataSource>
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

<p class="auto-style13">
    <strong>Details View for Trainee Information</strong></p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="TraineeName" HeaderText="TraineeName" SortExpression="TraineeName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Fields>
    </asp:DetailsView>
</p>
<p>
    &nbsp;</p>


