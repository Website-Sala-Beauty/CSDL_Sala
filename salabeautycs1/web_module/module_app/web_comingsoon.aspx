<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web_ComingSoon.aspx.cs" Inherits="web_module_module_app_web_ComingSoonaspx" %>

<!DOCTYPE html>
<%--<%@ Register Src="~/web_usercontrol/menu_header.ascx" TagPrefix="uc1" TagName="linqheader" %>--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../css/footer.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title></title>
    <style>
            .container {
                position: relative;
                width: 100%;
                height: 100vh;
            }

                .container img {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                }
                .fa-chevron-left {
    font-size: 41px;
    color: white;
}
        </style>
    <style>
        .container_footer {
    display: flex;
    width: 100%;
    height: 246px;
    line-height: 114px;
    background-color: #ffffff;
    margin: 40px 0px;
    font-size: 47px;
    font-weight: bolder;
    padding: 10px 30px;
    color: black;
    box-shadow: 5px 5px 2px 2px #dcd7d7;
    flex-direction: column;
}
    </style>
  
</head>
 <body>
       <div class="navabar">
        <a href="/trang-chu"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
        <div class="tieude"><span>Coming Soon</span></div>
      <%--  <div class="icon-infor">
            <uc1:linqheader runat="server" ID="linqheader" />
        </div>--%>
    </div>
    <div class="container">
        <img src="../../images/coming-soon-coming.gif" />
    </div></body>
</html>
