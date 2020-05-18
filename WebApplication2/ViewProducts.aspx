<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewProducts.aspx.cs" Inherits="WebApplication2.ViewProducts" %>
<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
    <center> <strong>ProNutX</strong></center>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Product Preview 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">

     <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="ViewSpecificPro">
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
             <asp:Image ID="CurrentImage" runat="server" ImageURL='<%# string.Format("~\\ProductImages\\{0}.jpg", Eval("ProductId")) %>'/>
             <br />
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

         </ItemTemplate>
     </asp:FormView>
     <asp:SqlDataSource ID="ViewSpecificPro" runat="server" ConnectionString="<%$ ConnectionStrings:db_1921760_co5027_asg %>" SelectCommand="SELECT * FROM [ProductNutX] WHERE ([ProductId] = @ProductId)">
         <SelectParameters>
             <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" Type="Int32" />
         </SelectParameters>
     </asp:SqlDataSource>


     </asp:Content>
