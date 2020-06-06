<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ASP_BIG_WORK.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:TextBox ID="adminname" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="adminpwd" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
    </form>
</body>
</html>
