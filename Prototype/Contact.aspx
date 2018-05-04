<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Prototype.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    ABOUT US
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <p>We provide consumers the best service in the world, where you can purchase a vehicle online
    and delivered to you directly on your door step.</p>
    <form id="frmContact" runat="server">
    <div class="contactInfo">
    <h2>HYUNDAI MARKETING</h2>
        <p>Contact: +673 718 9111 | 9411</p>
        <p></p>
        <asp:Label ID="lblEmail" runat="server" Text="Email: " Font-Names="Gadugi"></asp:Label>
        <p></p>
        <asp:TextBox ID="txtEmail" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Gadugi" Width="250px" CssClass="inputs" BackColor="White"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regEmailField" runat="server" ControlToValidate="txtEmail" ErrorMessage="Type in Email Address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Gadugi" Font-Size="Small"></asp:RegularExpressionValidator>
        <p></p>
        <asp:Label ID="subject" runat="server" Text="Subject: " Font-Names="Gadugi"></asp:Label>
        <p></p>
        <asp:TextBox ID="txtSubject" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Gadugi" Width="250px" BorderColor="Black" CssClass="inputs" BackColor="White"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please Enter Subject" Font-Names="Gadugi" Font-Size="Small"></asp:RequiredFieldValidator>
        <p></p>
        <asp:Label ID="body" runat="server" Text="Body: " Font-Names="Gadugi"></asp:Label>
        <p></p>
        <asp:TextBox ID="txtBody" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Gadugi" Height="70px" Width="300px" CssClass="inputs" BackColor="White" TextMode="MultiLine">Your message...</asp:TextBox>
        <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ControlToValidate="txtBody" ErrorMessage="Type in Body Msg" Font-Names="Gadugi" Font-Size="Small"></asp:RequiredFieldValidator>
        <p></p>
        <asp:Literal ID="LitBox" runat="server"></asp:Literal>
        <p></p>
         <p></p>
        <asp:Button ID="BtnSendEmail" runat="server" Text=" Send" OnClick="BtnSendEmail_Click" BackColor="#F0F0F0" Width="100px" BorderStyle="Solid" Font-Bold="True" Font-Names="Gadugi" Height="25px" />
    </div>
    </form>    
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="lblStore">
    <h2> LOCATION OF STORE</h2>
     </div>
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
