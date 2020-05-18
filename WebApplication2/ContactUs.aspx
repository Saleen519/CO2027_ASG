<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
       <center><strong>Contact Us </strong> </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    <span style="font-weight: normal"><strong>Get In Touch
    </strong></span>
    </asp:Content>


<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceholder1">
    <asp:panel runat="server" ID="pnlCompose">
        <asp:validationsummary runat="server" CssClass="errorMessages">
        </asp:validationsummary>
        <div>
            <br>
            <asp:label id="lblEmail" runat="server" text="Email Address" associatedcontrolid="txtEmail" style="font-weight: 700">
            </asp:label>
            &nbsp;:
            <asp:textbox id="txtEmail" runat="server" Width="236px" Height="17px"></asp:textbox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ErrorMessage="Please check you entered your email address correctly" 
                ControlToValidate="txtEmail" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br>
            <br>
            <asp:Label ID="lblConfirmEmail" runat="server" associatedcontrolid="txtConfirmEmail" style="font-weight: 700" text="Confirm Email">
            </asp:Label>
            &nbsp;:
            <asp:TextBox ID="txtConfirmEmail" runat="server" Height="19px" style="margin-left: 4px" Width="237px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" CssClass="error" ErrorMessage="Please check your confirmed email address">*</asp:CompareValidator>
            <br />
            <br>&nbsp;<asp:Label ID="lblSubject" runat="server" associatedcontrolid="txtSubject" style="font-weight: 700" text="Subject">
            </asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="txtSubject" runat="server" Height="17px" style="margin-left: 9px" Width="363px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="txtSubject" CssClass="error" ErrorMessage="Please type a subject for the message">*</asp:RequiredFieldValidator>
            <br></br>
            <br>
            <asp:Label ID="lblBody" runat="server" associatedcontrolid="txtBody" style="font-weight: 700" text="Your Message">
            </asp:Label>
            &nbsp;:<br>
            <br></br>
            &nbsp;<asp:TextBox ID="txtBody" runat="server" Height="54px" textmode="MultiLine" Width="490px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtBody" CssClass="error" ErrorMessage="Please type your message">*</asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnContact" runat="server" onclick="btnContact_Click" style="font-weight: 700" text="Send" Width="86px" />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
            <br>
            <br></br>
            <br></br>
            </br>
            </br>
            </br>
            </br>
            </br>
     

        </div>
    </asp:panel>
      
</asp:Content>



