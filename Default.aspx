<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styly/default.css" rel="stylesheet"/>
    <script src="js/default.js" type="text/javascript"></script>
    <title>Moje osobni stranka</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Header">

        </div>
        <div class="Content">
         <p>
            Content
         </p>
        </div>
            <input id="input1" type="text" />
            <a href="#" onclick="upozorneni(input1.value)">klikni</a>

        <div class="Footer">
       
        Footer
        
        </div>
    </form>
</body>
</html>
