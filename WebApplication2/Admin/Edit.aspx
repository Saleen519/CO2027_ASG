<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="WebApplication2.Admin.Edit" %>

<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Restricted Content Page for admin only!
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <br />
    <p><b>You have authorized to make any changes on the particular data in this page.</b></p>
    <br />
      <p><b>Instructions: Please select a data and you can upload image, edit and delete a products as listed below:</b></p>
    
    <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="viewpro">
         <Columns>
             <asp:CommandField ShowSelectButton="True" />
             <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
             <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
             <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
             <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
             <asp:BoundField DataField="ProductFlavor" HeaderText="ProductFlavor" SortExpression="ProductFlavor" />
             <asp:BoundField DataField="ProductAmount" HeaderText="ProductAmount" SortExpression="ProductAmount" />
             <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
             <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="Edit.aspx?ProductId={0}" InsertVisible="False" Text="Upload Image" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="viewpro" runat="server" ConnectionString="<%$ ConnectionStrings:db_1921760_co5027_asg %>" SelectCommand="SELECT * FROM [ProductNutX]"></asp:SqlDataSource>
     <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="editpro" DefaultMode="Edit" OnItemUpdated="FormView1_ItemUpdated" Width="256px">
         <EditItemTemplate>
             ProductId:
             <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
             <br />
             ProductName:
             <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             ProductDescription:
             <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
             <br />
             ProductPrice:
             <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
             <br />
             ProductFlavor:
             <asp:TextBox ID="ProductFlavorTextBox" runat="server" Text='<%# Bind("ProductFlavor") %>' />
             <br />
             ProductAmount:
             <asp:TextBox ID="ProductAmountTextBox" runat="server" Text='<%# Bind("ProductAmount") %>' />
             <br />
             Quantity:
             <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
             <br />
             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
             &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </EditItemTemplate>
         <InsertItemTemplate>
             ProductName:
             <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             ProductDescription:
             <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
             <br />
             ProductPrice:
             <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
             <br />
             ProductFlavor:
             <asp:TextBox ID="ProductFlavorTextBox" runat="server" Text='<%# Bind("ProductFlavor") %>' />
             <br />
             ProductAmount:
             <asp:TextBox ID="ProductAmountTextBox" runat="server" Text='<%# Bind("ProductAmount") %>' />
             <br />
             Quantity:
             <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
             <br />
             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </InsertItemTemplate>
         <ItemTemplate>
             ProductId:
             <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
             <br />
             ProductName:
             <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             ProductDescription:
             <asp:Label ID="ProductDescriptionLabel" runat="server" Text='<%# Bind("ProductDescription") %>' />
             <br />
             ProductPrice:
             <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
             <br />
             ProductFlavor:
             <asp:Label ID="ProductFlavorLabel" runat="server" Text='<%# Bind("ProductFlavor") %>' />
             <br />
             ProductAmount:
             <asp:Label ID="ProductAmountLabel" runat="server" Text='<%# Bind("ProductAmount") %>' />
             <br />
             Quantity:
             <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
             <br />
             <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
             &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
             &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
         </ItemTemplate>
     </asp:FormView>
     <asp:SqlDataSource ID="editpro" runat="server" ConnectionString="<%$ ConnectionStrings:db_1921760_co5027_asg %>" DeleteCommand="DELETE FROM [ProductNutX] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [ProductNutX] ([ProductName], [ProductDescription], [ProductPrice], [ProductFlavor], [ProductAmount], [Quantity]) VALUES (@ProductName, @ProductDescription, @ProductPrice, @ProductFlavor, @ProductAmount, @Quantity)" SelectCommand="SELECT * FROM [ProductNutX] WHERE ([ProductId] = @ProductId)" UpdateCommand="UPDATE [ProductNutX] SET [ProductName] = @ProductName, [ProductDescription] = @ProductDescription, [ProductPrice] = @ProductPrice, [ProductFlavor] = @ProductFlavor, [ProductAmount] = @ProductAmount, [Quantity] = @Quantity WHERE [ProductId] = @ProductId">
         <DeleteParameters>
             <asp:Parameter Name="ProductId" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="ProductDescription" Type="String" />
             <asp:Parameter Name="ProductPrice" Type="String" />
             <asp:Parameter Name="ProductFlavor" Type="String" />
             <asp:Parameter Name="ProductAmount" Type="String" />
             <asp:Parameter Name="Quantity" Type="Int32" />
         </InsertParameters>
         <SelectParameters>
             <asp:ControlParameter ControlID="GridView1" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
         </SelectParameters>
         <UpdateParameters>
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="ProductDescription" Type="String" />
             <asp:Parameter Name="ProductPrice" Type="String" />
             <asp:Parameter Name="ProductFlavor" Type="String" />
             <asp:Parameter Name="ProductAmount" Type="String" />
             <asp:Parameter Name="Quantity" Type="Int32" />
             <asp:Parameter Name="ProductId" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
     <asp:FormView ID="FormView2" runat="server" DataKeyNames="ProductId" DataSourceID="deletepro" OnItemUpdated="FormView2_ItemUpdated">
         <EditItemTemplate>
             ProductId:
             <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
             <br />
             ProductName:
             <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             ProductDescription:
             <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
             <br />
             ProductPrice:
             <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
             <br />
             ProductFlavor:
             <asp:TextBox ID="ProductFlavorTextBox" runat="server" Text='<%# Bind("ProductFlavor") %>' />
             <br />
             ProductAmount:
             <asp:TextBox ID="ProductAmountTextBox" runat="server" Text='<%# Bind("ProductAmount") %>' />
             <br />
             Quantity:
             <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
             <br />
             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
             &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </EditItemTemplate>
         <InsertItemTemplate>
             ProductName:
             <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             ProductDescription:
             <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
             <br />
             ProductPrice:
             <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
             <br />
             ProductFlavor:
             <asp:TextBox ID="ProductFlavorTextBox" runat="server" Text='<%# Bind("ProductFlavor") %>' />
             <br />
             ProductAmount:
             <asp:TextBox ID="ProductAmountTextBox" runat="server" Text='<%# Bind("ProductAmount") %>' />
             <br />
             Quantity:
             <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
             <br />
             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </InsertItemTemplate>
         <ItemTemplate>
             ProductId:
             <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
             <br />
             ProductName:
             <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
             <br />
             ProductDescription:
             <asp:Label ID="ProductDescriptionLabel" runat="server" Text='<%# Bind("ProductDescription") %>' />
             <br />
             ProductPrice:
             <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
             <br />
             ProductFlavor:
             <asp:Label ID="ProductFlavorLabel" runat="server" Text='<%# Bind("ProductFlavor") %>' />
             <br />
             ProductAmount:
             <asp:Label ID="ProductAmountLabel" runat="server" Text='<%# Bind("ProductAmount") %>' />
             <br />
             Quantity:
             <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
             <br />
             <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
             &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
             &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
         </ItemTemplate>
     </asp:FormView>
    <br />
     <asp:SqlDataSource ID="deletepro" runat="server" ConnectionString="<%$ ConnectionStrings:db_1921760_co5027_asg %>" DeleteCommand="DELETE FROM [ProductNutX] WHERE [ProductId] = @original_ProductId" InsertCommand="INSERT INTO [ProductNutX] ([ProductName], [ProductDescription], [ProductPrice], [ProductFlavor], [ProductAmount], [Quantity]) VALUES (@ProductName, @ProductDescription, @ProductPrice, @ProductFlavor, @ProductAmount, @Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProductNutX] WHERE ([ProductId] = @ProductId)" UpdateCommand="UPDATE [ProductNutX] SET [ProductName] = @ProductName, [ProductDescription] = @ProductDescription, [ProductPrice] = @ProductPrice, [ProductFlavor] = @ProductFlavor, [ProductAmount] = @ProductAmount, [Quantity] = @Quantity WHERE [ProductId] = @original_ProductId">
         <DeleteParameters>
             <asp:Parameter Name="original_ProductId" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="ProductDescription" Type="String" />
             <asp:Parameter Name="ProductPrice" Type="String" />
             <asp:Parameter Name="ProductFlavor" Type="String" />
             <asp:Parameter Name="ProductAmount" Type="String" />
             <asp:Parameter Name="Quantity" Type="Int32" />
         </InsertParameters>
         <SelectParameters>
             <asp:ControlParameter ControlID="GridView1" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
         </SelectParameters>
         <UpdateParameters>
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="ProductDescription" Type="String" />
             <asp:Parameter Name="ProductPrice" Type="String" />
             <asp:Parameter Name="ProductFlavor" Type="String" />
             <asp:Parameter Name="ProductAmount" Type="String" />
             <asp:Parameter Name="Quantity" Type="Int32" />
             <asp:Parameter Name="original_ProductId" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
    <br />
     <asp:FileUpload ID="ImageFileUploadControl" runat="server" />
     <asp:Button ID="btnUpload" runat="server" Text="Upload Image" OnClick="btnUpload_Click" />

    <br />
        <div>
            <a href="~/Admin/Default.aspx" runat="server">Go Back</a> | 
        </div>
    
    <br />

     </asp:Content>
