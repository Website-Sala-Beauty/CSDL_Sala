<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web_Login.aspx.cs" Inherits="web_module_module_app_web_Login" %>

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
               
                    <label>Số điện thoại</label>
                    <input type="text" id="txt_SoDienThoai" runat="server" />
                     <label>Mật khẩu</label>
                    <input type="password" id="txt_MatKhau" runat="server" />
                   
                    <a href="#" class="btn_DangNhap" id="btnDanhNhap" runat="server" onserverclick="btnDanhNhap_ServerClick">ĐĂNG NHẬP</a>
               <div class="text_login">
  <a href="/dang-ki" class="adangki">Đăng ký</a>
                       <a href="/quen-mat-khau" class="adangki"> <p>Quên mật khẩu?</p></a>
                      
                    </div>
                    </form>
            </div>
        </div>
</body>
</html>
