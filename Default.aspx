<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styly/default.css" rel="stylesheet"/>
    <script src="js/default.js" type="text/javascript"></script>
    <title>Moje osobni stranka</title>
    <style type="text/css">
        .style1
        {
            width: 141px;
        }
        .style2
        {
            width: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Header">
        <p>
            IS článků
         </p>
        </div>


        <div class="Content">
  
 
    
        <asp:Label ID="Label1" runat="server" Text="Titulek: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="93px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Článek: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="345px" Height="80px"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="vložit" />
        </div>
        


       
        <table class="center">
        <tr> 
        
        <td class="style2">  <img src="http://wiki.rvp.cz/@api/deki/files/12845/=kniha.jpg" alt="Book" width="60" height="60"/>   </td>
        
         <td>
          <p>
            Footer
            </p>
             </td> 
             <td>
         <img src="http://wiki.rvp.cz/@api/deki/files/12845/=kniha.jpg" alt="Book" height="60" width="60px"/>
         
         </td>
         
        </tr> 
        </table>  
        </div>


    </form>
</body>
</html>
