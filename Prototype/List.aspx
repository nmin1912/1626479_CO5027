<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Prototype.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin (List)
</asp:Content>
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
        <h2>LIST OF PRODUCTS</h2>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="950px" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" Font-Names="Gadugi" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductInStock" HeaderText="ProductInStock" SortExpression="ProductInStock" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="Edit.aspx?Id={0}" Text="Edit" />
            </Columns>
            <HeaderStyle BackColor="#F0F0F0" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="2px" ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" />
            <RowStyle BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626479_co5207_asgConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductInStock] = @original_ProductInStock) OR ([ProductInStock] IS NULL AND @original_ProductInStock IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductDescription] = @original_ProductDescription) OR ([ProductDescription] IS NULL AND @original_ProductDescription IS NULL)) AND (([ProductImg] = @original_ProductImg) OR ([ProductImg] IS NULL AND @original_ProductImg IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductID], [ProductName], [ProductInStock], [ProductPrice], [ProductDescription], [ProductImg]) VALUES (@ProductID, @ProductName, @ProductInStock, @ProductPrice, @ProductDescription, @ProductImg)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductInStock] = @ProductInStock, [ProductPrice] = @ProductPrice, [ProductDescription] = @ProductDescription, [ProductImg] = @ProductImg WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductInStock] = @original_ProductInStock) OR ([ProductInStock] IS NULL AND @original_ProductInStock IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductDescription] = @original_ProductDescription) OR ([ProductDescription] IS NULL AND @original_ProductDescription IS NULL)) AND (([ProductImg] = @original_ProductImg) OR ([ProductImg] IS NULL AND @original_ProductImg IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductInStock" Type="Int32" />
                <asp:Parameter Name="original_ProductPrice" Type="Double" />
                <asp:Parameter Name="original_ProductDescription" Type="String" />
                <asp:Parameter Name="original_ProductImg" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductInStock" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Double" />
                <asp:Parameter Name="ProductDescription" Type="String" />
                <asp:Parameter Name="ProductImg" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductInStock" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Double" />
                <asp:Parameter Name="ProductDescription" Type="String" />
                <asp:Parameter Name="ProductImg" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductInStock" Type="Int32" />
                <asp:Parameter Name="original_ProductPrice" Type="Double" />
                <asp:Parameter Name="original_ProductDescription" Type="String" />
                <asp:Parameter Name="original_ProductImg" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

