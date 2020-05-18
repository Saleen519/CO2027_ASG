<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="WebApplication2.Admin.Default" %>
<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    You Have Logged on into Admin Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <br />
    <p><b>The content table as below consists of available stock products of ProNuxX</b> </p>
    <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="ViewPro">
    <Columns>
        <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
        <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
        <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
        <asp:BoundField DataField="ProductFlavor" HeaderText="ProductFlavor" SortExpression="ProductFlavor" />
        <asp:BoundField DataField="ProductAmount" HeaderText="ProductAmount" SortExpression="ProductAmount" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="ViewPro" runat="server" ConnectionString="<%$ ConnectionStrings:db_1921760_co5027_asg %>" SelectCommand="SELECT * FROM [ProductNutX]"></asp:SqlDataSource>
    <br />
    **Notes**
    <p>You can add or modify data above by click:</p>
  
        <div>
            <a href="~/Admin/Add.aspx" runat="server">Add Product</a> | <a href="~/Admin/Edit.aspx" runat="server">Edit Product</a>
        </div>
    
    <br />
     </asp:Content>
