<%@ Page Title="Admin Home" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Prototype.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Hyundai (Admin)
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Welcome to Admin Panel
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        Default page for admin<br />
        <asp:Button ID="btnLogout" runat="server" Text="Log Out" OnClick="btnLogout_Click" />
&nbsp;</form>
</asp:Content>

