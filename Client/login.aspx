<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Website.forms.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login
    </title>
    <link rel="icon" type="image/x-icon" href="img/icon/user-male-circle-blue-128.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/ionicons.min.css" rel="stylesheet" />
    <link href="../Content/sticky-header-navbar.css" rel="stylesheet" />
    <link href="../Content/sticky-footer-navbar.css" rel="stylesheet" />
</head>

<body style="overflow: hidden;">
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg ">
            <img src="../img/logo.png" alt="test" />
            <asp:Label ID="logins" Text="Login" runat="server" Font-Bold="true" Font-Size="XX-Large" ForeColor="White" CssClass="offset-9"></asp:Label>
        </nav>
        <div class="container">
            <div class="row">
                <asp:Panel ID="first" runat="server" CssClass="p-5">
                    <div class="form-group">
                        <asp:Label ID="username" runat="server" Text="Username" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <asp:TextBox ID="txtusername" PlaceHolder="Username" runat="server" autocomplete="off" TabIndex="1" CssClass="form-control col-md-12" Required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="password" runat="server" Text="Password" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <asp:TextBox ID="txtpassword" PlaceHolder="Password" runat="server" TextMode="Password" TabIndex="2" CssClass="form-control col-md-12" Required></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:LinkButton ID="forgotpassword" runat="server" Font-Bold="True" Font-Size="Large" CssClass="linkpassword" OnClick="forgotpassword_Click">Forgot Password</asp:LinkButton>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Login" runat="server" Text="Login" TabIndex="3" CssClass="btn btn-success" OnClick="Login_Click" />
                        <asp:Button ID="signup" runat="server" Text="Signup" TabIndex="4" OnClick="signup_Click" CssClass="btn btn-primary" formnovalidate />
                    </div>
                </asp:Panel>
            </div>
        </div>
        <div class="form-group row">
            <asp:Panel ID="forgot" runat="server" CssClass="p-lg-5" Visible="false">
                <div class="form-group">
                    <asp:Label ID="account" runat="server">Please enter your email-Id</asp:Label>
                    <asp:TextBox ID="txtforgotpassword" PlaceHolder="me@example.com" runat="server" CssClass="form-control col-md-12" type="Email" Required></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="Submit_Click" />
                    <asp:Button ID="cancel" runat="server" Text="cancel" CssClass="btn btn-secondary" OnClick="cancel_Click" CausesValidation="false" formnovalidate />
                </div>
            </asp:Panel>
        </div>
        <script src="../Scripts/jquery-3.0.0.min.js"></script>
        <script src="../Scripts/bootstrap.min.js"></script>
        <script type="text/javascript">
  
        </script>
    </form>
</body>
</html>
