<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Prototype.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin (Home)</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    
    <form id="form1" runat="server">
      
       <div id="adminNav">
          <ul >
            <li><a><asp:Button ID="btnLogout" runat="server" Text="Log Out" OnClick="btnLogout_Click" BackColor="#F0F0F0" BorderStyle="None" /></a></li>
            <li><a href="~/List" runat="server">List</a></li>
            <li><a href="~/add" runat="server">Add</a></li>
            <li><a href="~/index" runat="server">Home</a></li>
          </ul>
       </div> 
        <h2>Welcome to Admin Section</h2>
        <p>In here; the established functions consists of Add, List, Edit, Update, and Deleting the Products</p>
        <br />
        <p><b>Simple navigation through the Admin:</b></p>
        <p>1) To Add: Select the 'Add' Navigation Bar, and fill the data</p>
        <p>2) To Edit and Update: Select the 'List' Navigation Bar, then Click 'Edit' on selected product<br />
            and it will direct to the Edit Page, where the data can be change and 'Update'</p>
        <p>3) To Delete: Select the 'List' Navigation Bar, then Click 'Delete' on selected product</p>
        <p>4) To View List: Select the 'List' Navigation Bar, where all the products added are shown</p>
        <p>5) To Log Out from admin: Select the 'Log Out' Navigaiton Bar</p>
        
</form>
</asp:Content>

