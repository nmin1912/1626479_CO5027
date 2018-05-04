<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prototype.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Home
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
   
    <form id="frmDefault" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                <table id="tblRep">
                    <tr>
                        <td>
                            <a href="<%# Eval("ProductId","Products.aspx?Id={0}") %>">
                            <p><asp:Image ID="imgDisplay" Height="290px" Width="380px" runat="server" ImageUrl='<%# Eval ("ProductImg") %>' /></p>
                                <h3><%# Eval("ProductName") %></h3>
                                <p>Price: $ <%# Eval("ProductPrice") %></p>
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
         <FooterTemplate></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626479_co5207_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
        
    </form>
   
</asp:Content>
 