<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imagecatcha.aspx.cs" Inherits="Website.forms.imagecatcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Image id ="imgcatcha" runat="server" ImageUrl="~/imagecatcha.aspx" />
    </div>
    <asp:TextBox ID="txtcopy" runat="server">[Type Security code here]</asp:TextBox>
    </form>
</body>
</html>
