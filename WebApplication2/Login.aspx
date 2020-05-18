<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
    <center> <strong>About Us</strong></center>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Who We Are
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
     <div>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            <br />
            <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
         <br />
         <p>Have Any Account? Please Sign Up</p>
          <div>
            <asp:Label ID="lblLoginEmail" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblLoginPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
            <br />
            <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
        </div>
            </asp:Content>
