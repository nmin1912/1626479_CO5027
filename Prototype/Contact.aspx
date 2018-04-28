<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Prototype.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
CONTACT US
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form" runat="server">
    <div class="contactInfo">
    <h2>HYUNDAI MARKETING</h2>
        <p>Contact: +673 718 9111 | 9411</p>
        <p></p>
        <asp:Label ID="lblEmail" runat="server" Text="Email: " Font-Names="Gadugi"></asp:Label>
        <p></p>
        <asp:TextBox ID="txtEmail" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Font-Names="Gadugi" Width="190px" CssClass="inputs"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regEmailField" runat="server" ControlToValidate="txtEmail" ErrorMessage="Type in Email Address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Gadugi" Font-Size="Small"></asp:RegularExpressionValidator>
        <p></p>
        <asp:Label ID="subject" runat="server" Text="Subject: " Font-Names="Gadugi"></asp:Label>
        <p></p>
        <asp:TextBox ID="txtSubject" runat="server" BorderStyle="Inset" BorderWidth="1px" Font-Names="Gadugi" Width="177px" BorderColor="Black" CssClass="inputs"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please Enter Subject" Font-Names="Gadugi" Font-Size="Small"></asp:RequiredFieldValidator>
        <p></p>
        <asp:Label ID="body" runat="server" Text="Body: " Font-Names="Gadugi"></asp:Label>
        <p></p>
        <asp:TextBox ID="txtBody" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Font-Names="Gadugi" Height="16px" Width="192px" CssClass="inputs">Your message...</asp:TextBox>
        <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ControlToValidate="txtBody" ErrorMessage="Type in Body Msg" Font-Names="Gadugi" Font-Size="Small"></asp:RequiredFieldValidator>
        <p></p>
        <asp:Literal ID="LitBox" runat="server"></asp:Literal>
        <p></p>
         <p></p>
        <asp:Button ID="BtnSendEmail" runat="server" Text=" Send" OnClick="BtnSendEmail_Click" BackColor="#F0F0F0" Width="80px" />
    </div>
    </form>    
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="map">
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 4.885808, lng: 114.931676 },
                zoom: 18
                
            });

             var marker = new google.maps.Marker({
             position: { lat: 4.885808, lng: 114.931676 },
             map: map,
             title: 'Hyundai Cars'
             });
        }
    </script>
    <script async defer type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBD_FC12d1ZxmrZQLBmsWWXDaO7pnGoaY4&callback=initMap" ></script>
    </div>
</asp:Content>
