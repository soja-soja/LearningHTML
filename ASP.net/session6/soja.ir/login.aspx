<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="soja.ir.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        نام کاربری:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        پسورد:&nbsp;&nbsp;
        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        .<br />
        <asp:Label ID="lblErr" runat="server" Text=""></asp:Label>
        <hr />
        <asp:Button ID="btnLogin" runat="server" Text="Login!" OnClick="btnLogin_Click" />
    </form>
</body>
</html>
