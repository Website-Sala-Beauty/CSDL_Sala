﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="module_HoaDonThanhToan.aspx.cs" Inherits="admin_page_module_function_module_ThanhToan_module_DatLich_module_QuanLyDichVu" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v17.1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <script src="../../../js/jquery-3.3.1.min.js"></script>
    <script src="../../../admin_js/sweetalert.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <script type="text/javascript">
        function showPreview(input) {
            if (input.files && input.files[0]) {
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#hibodywrapper_popupControl_imgPreview').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
        //function showImg(img) {
        //    $('#hibodywrapper_popupControl_imgPreview').attr('src', img);
        //}
        function showPreview1(input) {
            if (input.files && input.files[0]) {
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#imgPreview1').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
        function showImg1(img) {
            $('#hibodywrapper_imgPreview1').attr('src', img);
        }
        function showImg1_1(img) {
            $('#imgPreview1').attr('src', img);
        }
        function onLoad() {
            document.getElementById("img-loading-icon").style.display = 'block';
        }
        function HiddenonLoad() {
            document.getElementById("img-loading-icon").style.display = 'none';
        }
    </script>
    <div class="loading" id="img-loading-icon" style="display: none; position: relative">
        <img class="loading" src="../../../images/Loading_icon.gif" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, 34%);" />
        <%--<SettingsLoadingPanel Text="Đang tải ..." />--%>

        <%--<div class="loading">Loading&#8230;</div>--%>
    </div>
    <div class="card card-block">
        <div class="form-group row">
            <div class="col-sm-12">
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <a class="btn btn-primary" href="javascript:void(0)" id="btnThem" runat="server" onserverclick="btnThem_ServerClick" onclick=" onLoad()">Thêm</a>
                        <a class="btn btn-primary" href="javascript:void(0)" id="btnChiTiet" runat="server" onserverclick="btnChiTiet_ServerClick" onclick=" onLoad()">Chi tiết</a>
                        <a class="btn btn-primary" href="javascript:void(0)" id="btnXacNhan" runat="server" onserverclick="btnXacNhan_ServerClick" onclick=" onLoad()">Xác nhận</a>
                        <a class="btn btn-primary" href="javascript:void(0)" id="btnPrint" runat="server" onserverclick="btnPrint_ServerClick" onclick=" onLoad()">In bill</a>


                    </ContentTemplate>
                </asp:UpdatePanel>

                <%--<asp:UpdatePanel ID="udButton" runat="server">
                    <ContentTemplate>
                        <div class="col-lg-12">
                            <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btnThem_Click" />
                            <asp:Button ID="btnChiTiet" runat="server" Text="Chi tiết" CssClass="btn btn-primary" OnClick="btnChiTiet_Click" />
                            <asp:Button ID="btnXacNhan" runat="server" Text="Xác nhận" CssClass="btn btn-primary" OnClick="btnXacNhan_Click" />
                            <div style="display: none">
                                <input type="submit" class="btn btn-primary" value="Xóa" onclick="confirmDel()" />
                                <asp:Button ID="btnXoa" runat="server" CssClass="invisible" OnClick="btnXoa_Click" />
                            </div>
                            <asp:Button ID="btnPrint" runat="server" Text="In bill" CssClass="btn btn-primary" OnClick="btnPrint_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>--%>
            </div>
        </div>
    </div>
    <div class="form-group table-responsive">
        <dx:ASPxGridView ID="grvList" runat="server" CssClass="table-hover" ClientInstanceName="grvList" KeyFieldName="hoadon_id" Width="100%">
            <Columns>
                <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="9%"></dx:GridViewCommandColumn>
                <dx:GridViewDataColumn Caption="Tên khách hàng" FieldName="hoadon_TenKhachHang" HeaderStyle-HorizontalAlign="Center" Width="9%"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Mã hóa đơn" FieldName="hoadon_code" HeaderStyle-HorizontalAlign="Center" Width="9%"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Ngày tạo" FieldName="hoadon_createdate" HeaderStyle-HorizontalAlign="Center" Width="9%"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Số điện thoại" FieldName="hoadon_sodienthoaikhachhang" HeaderStyle-HorizontalAlign="Center" Width="9%"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Địa chỉ giao hàng" FieldName="hoadon_diachigiaohang" HeaderStyle-HorizontalAlign="Center" Width="9%"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Tình trạng" FieldName="hoadon_tinhtrang" HeaderStyle-HorizontalAlign="Center" Width="9%"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Loại thanh toán" FieldName="hoadontam_LoaiThanhToan" HeaderStyle-HorizontalAlign="Center" Width="9%"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Phần trăm giảm giá" FieldName="hoadon_magiamgia" HeaderStyle-HorizontalAlign="Center" Width="9%"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Tổng bill" FieldName="hoadon_tongtien" HeaderStyle-HorizontalAlign="Center" Width="9%">
                    <DataItemTemplate>
                        <%--<%#Eval("hoadon_tongtien", "{0:N0}") %>--%>
                    </DataItemTemplate>
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn Caption="Phải trả" FieldName="hoadon_phaitra" HeaderStyle-HorizontalAlign="Center" Width="9%">
                    <DataItemTemplate>
                        <%--<%#Eval("hoadon_phaitra", "{0:N0}") %>--%>
                    </DataItemTemplate>
                </dx:GridViewDataColumn>
            </Columns>
            <SettingsSearchPanel Visible="true" />
            <SettingsBehavior AllowFocusedRow="true" />
            <SettingsText EmptyDataRow="Trống" SearchPanelEditorNullText="Gỏ từ cần tìm kiếm và enter..." />
            <SettingsLoadingPanel Text="Đang tải ..." />
            <SettingsPager PageSize="10" Summary-Text="Trang {0} / {1} ({2} trang)"></SettingsPager>
        </dx:ASPxGridView>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>

