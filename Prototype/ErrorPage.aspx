<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="Prototype.ErrorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    ERROR!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
   <!-- <form id="form1" runat="server">
         <div id="adminNav">
          <ul >
            <li><a><asp:Button ID="btnLogout" runat="server" Text="Log Out" OnClick="btnLogout_Click" BackColor="#F0F0F0" BorderStyle="None" /></a></li>
            <li><a href="~/List" runat="server">List</a></li>
            <li><a href="~/add" runat="server">Add</a></li>
            <li><a href="~/index" runat="server">Home</a></li>
          </ul>
       </div> -->
        <h2> An Error Occured </h2>
         <p> 
             <asp:Button ID="btnHome" runat="server" BackColor="#F0F0F0" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Text="Home" OnClick="btnHome_Click" />
         </p>
      </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
