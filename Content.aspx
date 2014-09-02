<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>



<asp:Content ID="Content1" ContentPlaceHolderID="Tittle" Runat="Server">
Content
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" Runat="Server">

<table class="Content_CRUD">
<tr><td>
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
</td><td>

      <asp:Button ID="Button2" runat="server" onClick="Button2_Click" Text="zobraz" />
      <br />
      <asp:ListBox ID="ListBox1" runat="server" Height="166px" Width="288px">
      </asp:ListBox>
      <br />
</td><%-- Konec radku --%>
</tr><tr><td> <%-- Zacatek noveho radku --%>

   <asp:Label ID="Label4" runat="server" Text="ID:   "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="93px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Titulek:   "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="93px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Clanek:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="88px"></asp:TextBox>
        <br />
        <br />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Editovat" />

</td><td>

   <asp:Label ID="Label6" runat="server" Text="Smazat Clanek s ID:   "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Width="93px"></asp:TextBox>
        <br />
        <br />
         <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Smazat" />

</td></tr> <%-- Konec radku --%>
</table>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>

