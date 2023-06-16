<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web_QuenMatKhauaspx.aspx.cs" Inherits="web_module_module_app_web_QuenMatKhauaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css_Lai/css_Login.css" rel="stylesheet" />
    <script src="../../admin_js/sweetalert.min.js"></script>
</head>
<body>
        <div class="container_form">
            <div class="container_login">
                <div class="form_logo">
                    <img src="../../app_image/Longin/longin_logo.png" />
                </div>
                <form class="form_login" runat="server">
                     <label>Xác nhận mail đăng kí</label>
                    <input type="text" id="txtEmail" runat="server" />
                    <div class="text_login">                   
                    </div>
                    <a href="#" class="btn_DangNhap" id="btnDanhNhap" runat="server" onserverclick="btnDanhNhap_ServerClick">Xác nhận</a>
                </form>
            </div>
        </div>
</body>
</html>
