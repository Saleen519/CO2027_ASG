<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="WebApplication2.Products" %>
<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
    <center> <strong>About Us</strong></center>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Exclusive Products ProNutX For 0ur Beloved Customer 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    Buy yours at low price while it lasts!
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="viewproducts">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <asp:BoundField DataField="ProductFlavor" HeaderText="ProductFlavor" SortExpression="ProductFlavor" />
                <asp:BoundField DataField="ProductAmount" HeaderText="ProductAmount" SortExpression="ProductAmount" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="ViewProducts.aspx?ProductId={0}" Text="View Product" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="viewproducts" runat="server" ConnectionString="<%$ ConnectionStrings:db_1921760_co5027_asg %>" SelectCommand="SELECT * FROM [ProductNutX]"></asp:SqlDataSource>

        </asp:Content>
