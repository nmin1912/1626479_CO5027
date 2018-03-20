<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Prototype.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form" runat="server">
    <div class="contactInfo">
    <h2>Hyundai Marketing</h2>
        <p>Contact: +673 718 9111 | 9411</p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regEmailField" runat="server" ControlToValidate="txtEmail" ErrorMessage="Type in Email Address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="subject" runat="server" Text="Subject: "></asp:Label><asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please Enter Subject"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="body" runat="server" Text="Body: "></asp:Label><asp:TextBox ID="txtBody" runat="server">Your message...</asp:TextBox>
        <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ControlToValidate="txtBody" ErrorMessage="Type in Body Msg"></asp:RequiredFieldValidator>
        <br />
        <asp:Literal ID="LitBox" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="BtnSendEmail" runat="server" Text=" Send Email" OnClick="BtnSendEmail_Click" />

    </div>
    </form>    
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">

    <div id="map">
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8
            });
        }
        
    </script>
    <script async defer type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBD_FC12d1ZxmrZQLBmsWWXDaO7pnG&callback=initMap" ></script>
    </div>
</asp:Content>
