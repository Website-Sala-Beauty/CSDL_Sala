<%@ Page Title="" Language="C#" MasterPageFile="~/AppMasterPage.master" AutoEventWireup="true" CodeFile="web_TimKiem.aspx.cs" Inherits="web_module_web_TimKiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/footer.css" rel="stylesheet" />
    <link href="../css/MauNailBox.css" rel="stylesheet" />
    <style>
        .base {
            margin-top: 85px;
            /* padding-bottom: 25%; */
            /* width: 100%; */
            background-image: url(../App_image/Dung/mau-nail-box/background.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            min-height: 90rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .item img {
            margin: 0;
            object-fit: cover;
            height: 20rem;
        }

        .owl-stage-outer {
            height: 20rem;
        }
    </style>
    <div class="navabar">
        <a href="/trang-chu"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
        <div class="tieude"><span>MẪU NAILS</span></div>
    </div>
    <div class="base">
        <%--<div class="owl-carousel owl-theme">
            <asp:Repeater ID="rpSlide" runat="server">
                <ItemTemplate>
                    <div id="overlay">
                        <div class="item">
                            <img src="<%#Eval("sanpham_image") %>" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>--%>
        <div class="row">
            <asp:Repeater ID="rpMauNail" runat="server">
                <ItemTemplate>
                    <a href="mau-nail-dat-lich-<%#Eval("sanpham_id")%>" class="block-nailbox col-sm-5">
                        <img src="<%#Eval("sanpham_image") %>" />
                        <span class="name-album"><%#Eval("sanpham_name") %></span>
                    </a>
                </ItemTemplate>
            </asp:Repeater>

        </div>
        <input type="text" hidden="hidden" id="txtIDLoaiNailBox" runat="server" />
    </div>
    <script>

        $(document).ready(function () {
            $('.owl-carousel').owlCarousel({
                loop: true,
                margin: 10,
                nav: true,
                responsive: {
                    0: {
                        items: 1
                    },
                }
            })
        });

    </script>
</asp:Content>

