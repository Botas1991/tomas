<%@ Page Title="Post" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="Post" %>

<asp:Content ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

    <table class="Post_CRUD">
        <tr>
            <td>
               <asp:Label ID="Label1" runat="server" Text="Titulek: "></asp:Label>
               <asp:TextBox ID="TextBox1" runat="server" Width="254px"></asp:TextBox>

               <br /><br />

               <asp:Label ID="Label2" runat="server" Text="Článek: "></asp:Label>
               <asp:TextBox ID="TextBox2" runat="server" Width="345px" Height="80px" TextMode="MultiLine"></asp:TextBox>
               
                <br /><br />

               <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="vložit" />
            </td>
            <td>
              <asp:Button ID="Button2" runat="server" onClick="Button2_Click" 
                    Text="zobraz s edituj" Width="145px" />

                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="Smazat Zaznam" />
              <br />
              <asp:ListBox ID="ListBox1" runat="server" Height="166px" Width="288px" 
                    onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
              <br />
            </td><%-- Konec radku --%>
        </tr>
        <tr>
            <td> <%-- Zacatek noveho radku --%>
                <asp:Label ID="Label4" runat="server" Text="ID:   "></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="93px"></asp:TextBox>

                <br /><br />

                <asp:Label ID="Label3" runat="server" Text="Titulek:   "></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Width="246px"></asp:TextBox>

                <br /><br />

                <asp:Label ID="Label5" runat="server" Text="Clanek:"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Width="298px" Height="78px" 
                    TextMode="MultiLine"></asp:TextBox>

                <br /><br />

                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Editovat" />
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Smazat Clanek s ID:   " 
                    Visible="False"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Width="93px" Visible="False"></asp:TextBox>

                <br /><br />

            </td>
        </tr> <%-- Konec radku --%>
    </table>
</asp:Content>


