<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None"  CodeBehind="Default.aspx.cs" Inherits="soja.ir.Default" %>

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
                  <h1>
                     <asp:Label ID="lblTitle" runat="server" Text="به سایت من خوش آمدی"></asp:Label>
                  </h1>
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
                           
                            <div class="row">
                         نام کاربری:   <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            </div>
                            
                            <div class="row">
                                کلمه عبور: <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                                </div>
                            <div class="row">
                                نام : <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                </div>
                        </div>
                            <div class="card-footer">
                                <asp:Button ID="btnAdd" runat="server" Text="ثبت اطلاعات"  OnClick="btnAdd_Click"/>

                        </div>
                    </div>
                </div>
                <div class="col-sm">

                    <div class="card border-success">
                        <div class="card-header">

                        </div>
                        <div class="card-body">

                            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                                <asp:View ID="view0" runat="server">
                                    Step 1
                                    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="g1"></asp:TextBox>
                                    <br />
                                    
                                </asp:View>
                                <asp:View ID="View1" runat="server">
                                    Step 2
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    Step 3
                                </asp:View>
                            </asp:MultiView>

                        </div>
                        
                        <div class="card-footer">
                            <asp:Button ID="Button1" runat="server" Text="بعدی"  OnClick="Button1_Click" ValidationGroup="g1"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="alert alert-danger" ErrorMessage="لطفا متن وارد کنید" ControlToValidate="TextBox1" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="عدد کمتر از 2 وارد کن" MaximumValue="2" MinimumValue="-10" ControlToValidate="TextBox1" ValidationGroup="g1"></asp:RangeValidator>
                           
                        </div>

                    </div>

                </div>
                <div class="col-sm">
                  <div class="card">
                        <div class="card-header">

                        </div>
                        <div class="card-body">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="sqlDS_users">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="sqlDS_users" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MyUsers] WHERE [username] = @username" InsertCommand="INSERT INTO [MyUsers] ([username], [Name]) VALUES (@username, @Name)" SelectCommand="SELECT [username], [Name] FROM [MyUsers]" UpdateCommand="UPDATE [MyUsers] SET [Name] = @Name WHERE [username] = @username">
                                <DeleteParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="Name" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="username" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>

                        <div class="card-footer">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDS_products">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button2" runat="server" OnClick="addToShoppingCart_Click" Text="اضافه به سبد خرید" ToolTip='<%# Eval("id") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <br />
                            <asp:SqlDataSource ID="SqlDS_products" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] ORDER BY [Price] DESC"></asp:SqlDataSource>
                        <a href="shoppingCart.aspx"> رفتن به سبد خرید</a>
                        </div>

                    </div>
                </div>
              </div>
    </div>



      

        
        
    

        
    </form>
</body>
</html>
