<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="TraineeInformation.aspx.cs" Inherits="ASPdotNetProject_Iqbal.ContentPages.TraineeRegistration" %>

<%@ Register Src="~/UserControls/MyUserControl.ascx" TagPrefix="uc1" TagName="MyUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <uc1:MyUserControl runat="server" id="MyUserControl" />
</asp:Content>
