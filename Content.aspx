<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Tittle" Runat="Server">
Content
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" Runat="Server">
This is Content Page

<asp:Label ID="Label1" runat="server" Text="Titulek: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="93px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Článek: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="345px" Height="80px" 
                TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="vložit" />
        </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>

