<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Prototype.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin (Edit)
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
        <h2>EDIT PRODUCTS</h2>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="520px" Height="224px">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductInStock:
                <asp:TextBox ID="ProductInStockTextBox" runat="server" Text='<%# Bind("ProductInStock") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductDescription:
                <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
                <br />
                ProductImg:
                <!--<asp:TextBox ID="ProductImgTextBox" runat="server" Text= />-->
                <asp:FileUpload ID="UploadFile" runat="server" />
                <asp:LinkButton ID="linkBtn" runat="server" OnClick="linkBtn_Click">Insert Image</asp:LinkButton>
                <asp:Label ID="lblUploadImg" runat="server" Text= '<%# Bind("ProductImg") %>'></asp:Label>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductID:
                <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductInStock:
                <asp:TextBox ID="ProductInStockTextBox" runat="server" Text='<%# Bind("ProductInStock") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductDescription:
                <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
                <br />
                ProductImg:
                <asp:TextBox ID="ProductImgTextBox" runat="server" Text='<%# Bind("ProductImg") %>' />
                <asp:FileUpload ID="UploadFile" runat="server" />
                <asp:LinkButton ID="linkBtn" runat="server" OnClick="linkBtn_Click">Insert Image</asp:LinkButton>
                <br />
                <asp:Label ID="lblUploadImg" runat="server"></asp:Label>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductInStock:
                <asp:Label ID="ProductInStockLabel" runat="server" Text='<%# Bind("ProductInStock") %>' />
                <br />
                ProductPrice:
                <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductDescription:
                <asp:Label ID="ProductDescriptionLabel" runat="server" Text='<%# Bind("ProductDescription") %>' />
                <br />
                ProductImg:
                <asp:Label ID="ProductImgLabel" runat="server" Text='<%# Bind("ProductImg") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626479_co5207_asgConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductInStock] = @original_ProductInStock) OR ([ProductInStock] IS NULL AND @original_ProductInStock IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductDescription] = @original_ProductDescription) OR ([ProductDescription] IS NULL AND @original_ProductDescription IS NULL)) AND (([ProductImg] = @original_ProductImg) OR ([ProductImg] IS NULL AND @original_ProductImg IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductID], [ProductName], [ProductInStock], [ProductPrice], [ProductDescription], [ProductImg]) VALUES (@ProductID, @ProductName, @ProductInStock, @ProductPrice, @ProductDescription, @ProductImg)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductID] = @ProductID)" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductInStock] = @ProductInStock, [ProductPrice] = @ProductPrice, [ProductDescription] = @ProductDescription, [ProductImg] = @ProductImg WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductInStock] = @original_ProductInStock) OR ([ProductInStock] IS NULL AND @original_ProductInStock IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductDescription] = @original_ProductDescription) OR ([ProductDescription] IS NULL AND @original_ProductDescription IS NULL)) AND (([ProductImg] = @original_ProductImg) OR ([ProductImg] IS NULL AND @original_ProductImg IS NULL))">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
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
        <br />
    </form>
</asp:Content>

