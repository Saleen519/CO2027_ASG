<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="WebApplication2.Admin.Add" %>

<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Restricted Content Page for admin only!
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <br />
    <p><b>You have authorized add data products in this page.</b></p>
    <br />
      <p><b>Instructions: Please fill in the form to insert a product details.</b></p>
    
    <br />

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="addpro" DefaultMode="Insert">
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
<asp:SqlDataSource ID="addpro" runat="server" ConnectionString="<%$ ConnectionStrings:db_1921760_co5027_asg %>" DeleteCommand="DELETE FROM [ProductNutX] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [ProductNutX] ([ProductName], [ProductDescription], [ProductPrice], [ProductFlavor], [ProductAmount], [Quantity]) VALUES (@ProductName, @ProductDescription, @ProductPrice, @ProductFlavor, @ProductAmount, @Quantity)" SelectCommand="SELECT * FROM [ProductNutX]" UpdateCommand="UPDATE [ProductNutX] SET [ProductName] = @ProductName, [ProductDescription] = @ProductDescription, [ProductPrice] = @ProductPrice, [ProductFlavor] = @ProductFlavor, [ProductAmount] = @ProductAmount, [Quantity] = @Quantity WHERE [ProductId] = @ProductId">
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
  <br />
        <div>
            <a href="~/Admin/Default.aspx" runat="server">Go Back</a> | 
        </div>
    
  <br />
    </asp:Content>

