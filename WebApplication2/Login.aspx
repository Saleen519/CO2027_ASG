<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
    <center> <strong>Restricted Page</strong></center>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Only Auhorized For Admin User
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
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
