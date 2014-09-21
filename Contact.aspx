<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

    <p>Pro odeslání emailu vyplňte následující formulář</p>

    <br /><br />
        
    <asp:Label ID="Label1" runat="server" Text="Váš e-mail: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>

    <br /><br />

    <asp:Label ID="Label2" runat="server" Text="Předmět: "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="234px"></asp:TextBox>

    <br /><br />

    <asp:Label ID="Label3" runat="server" Text="Obsah: "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="300px" Height="92" TextMode="MultiLine"></asp:TextBox>

    <br /><br />

      <asp:Label ID="Label4" runat="server" Text="Přílohy: "></asp:Label>
   

    <asp:FileUpload ID="FileUpload1" runat="server" />
   

    <br /><br />

    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Odeslat"/> 

</asp:Content>


