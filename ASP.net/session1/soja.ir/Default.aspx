<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="soja.ir.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>سایت سوال و جواب</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>به سایت من خوش آمدید</h1>
        <hr />
        
        <div>

        </div>
        <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" style="font-size: medium" Text="نام کاربر"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="اضافه کردن" />
    </form>
</body>
</html>
