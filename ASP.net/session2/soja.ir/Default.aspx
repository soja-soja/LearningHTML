<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="soja.ir.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>سایت سوال و جواب</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body dir="rtl">
    <form id="form1" runat="server">
        <div class="container">
              <div class="row justify-content-center ">
                    <h1>به سایت من خوش آمدید</h1>
            </div>
        <hr />
              <div class="row">
                <div class="col-sm">
                   <div class="card text-center ">
                        <div class="card-header">
                        لطفا نام خود را وارد نمایید:
                        </div>
                        <div class="card-body bg-info">
                        <h5 class="card-title">نام</h5>
    
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" OnClick="btnAdd_Click" Text="اضافه کردن" />

                        </div>
                            <div class="card-footer">
                                <asp:Label ID="Label1" runat="server" CssClass="alert alert-success" Font-Names="Tahoma" style="font-size: medium" Text=""></asp:Label>

                        </div>
                    </div>
                </div>
                <div class="col-sm">

                    <div class="card border-success">
                        <div class="card-header">

                        </div>
                        <div class="card-body">

                        </div>

                        <div class="card-footer"></div>

                    </div>

                </div>
                <div class="col-sm">
                  <div class="card">
                        <div class="card-header">

                        </div>
                        <div class="card-body">

                        </div>

                        <div class="card-footer"></div>

                    </div>
                </div>
              </div>
    </div>



      

        
        
    

        
    </form>
</body>
</html>
