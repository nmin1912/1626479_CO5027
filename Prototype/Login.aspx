<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Prototype.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <form id="frmLogin" runat="server">
    <div class="row">
        <div class="column">
        <h2> LOGIN </h2>
        <br />
       <p>
           <asp:Label ID="lblEmail" runat="server" Text="Username: " Font-Names="Gadugi" Font-Size="16px"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" Height="16px" BorderColor="Black" BorderStyle="Solid" Font-Names="Gadugi" Width="215px" BackColor="White" BorderWidth="1px"></asp:TextBox></p>
        <p>&nbsp;</p>
       <p><asp:Label ID="lblPassword" runat="server" Text="Password: " Font-Names="Gadugi" Font-Size="16px"></asp:Label>
           <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BorderColor="Black" BorderStyle="Solid" Font-Names="Gadugi" Width="215px" BackColor="White" BorderWidth="1px" style="margin-top: 0px"></asp:TextBox></p>
        <p>&nbsp;</p>
            <p><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BorderStyle="Solid" Font-Bold="True" Font-Names="Gadugi" Font-Overline="False" Font-Size="14px" Height="30px" Width="60px" BackColor="#F0F0F0" /></p>
        <p><asp:Literal ID="LitLoginError" runat="server"></asp:Literal></p>
        <br />
    </div>

    <div class="column2">
        <h2> REGISTER</h2>
        <br />
        <asp:Label ID="lblUsername" runat="server" Text="Username: " Font-Names="Gadugi" Font-Size="16px"></asp:Label>
        <p>
        <asp:TextBox ID="txtUsername" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Names="Gadugi" Width="215px" BackColor="White" BorderWidth="1px"></asp:TextBox></p>
        <p><asp:Label ID="Label1" runat="server" Text="Password:" Font-Names="Gadugi" Font-Size="16px"></asp:Label>
        </p>
       <p>
        <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" BorderColor="Black" BorderStyle="Solid" Font-Names="Gadugi" Width="215px" BackColor="White" BorderWidth="1px"></asp:TextBox></p>
       <p></p>
        <p><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" BorderStyle="Solid" Font-Bold="True" Font-Names="Gadugi" Font-Overline="False" Font-Size="14px" Height="30px" Width="90px" BackColor="#F0F0F0" /></p>
        <p><asp:Literal ID="LitRegisterError" runat="server"></asp:Literal></p>
        <br />
    </div>
   </div>
   </form>
</asp:Content>
