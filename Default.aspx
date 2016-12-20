<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 7</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Xml ID="Xml1" runat="server" DocumentSource="~/App_Data/account.xml" TransformSource="~/App_Data/checking.xsl"></asp:Xml>
    </div>
    </form>
</body>
</html>
