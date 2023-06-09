
/****** Object:  Table [admin_AccessGroupUserForm]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin_AccessGroupUserForm](
	[guf_id] [int] IDENTITY(1,1) NOT NULL,
	[guf_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[form_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[guf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [admin_AccessGroupUserModule]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin_AccessGroupUserModule](
	[gum_id] [int] IDENTITY(1,1) NOT NULL,
	[gum_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[module_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[gum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [admin_AccessUserForm]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin_AccessUserForm](
	[uf_id] [int] IDENTITY(1,1) NOT NULL,
	[uf_active] [bit] NULL,
	[username_id] [int] NULL,
	[form_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [admin_Form]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin_Form](
	[form_id] [int] IDENTITY(1,1) NOT NULL,
	[form_position] [int] NULL,
	[form_name] [nvarchar](max) NULL,
	[form_link] [nvarchar](max) NULL,
	[form_active] [bit] NULL,
	[module_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [admin_GroupUser]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin_GroupUser](
	[groupuser_id] [int] IDENTITY(1,1) NOT NULL,
	[groupuser_name] [nvarchar](max) NULL,
	[groupuser_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupuser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [admin_Module]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin_Module](
	[module_id] [int] IDENTITY(1,1) NOT NULL,
	[module_position] [int] NULL,
	[module_name] [nvarchar](max) NULL,
	[module_icon] [nvarchar](max) NULL,
	[module_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[module_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [admin_User]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin_User](
	[username_id] [int] IDENTITY(1,1) NOT NULL,
	[username_username] [nvarchar](max) NULL,
	[username_password] [nvarchar](max) NULL,
	[username_fullname] [nvarchar](max) NULL,
	[username_gender] [bit] NULL,
	[username_phone] [nvarchar](max) NULL,
	[username_email] [nvarchar](max) NULL,
	[username_active] [bit] NULL,
	[groupuser_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_ChiaSe]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_ChiaSe](
	[chiase_id] [int] IDENTITY(1,1) NOT NULL,
	[chiase_code] [nvarchar](max) NULL,
	[khachhang_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[chiase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_DanhGia]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_DanhGia](
	[danhgia_id] [int] IDENTITY(1,1) NOT NULL,
	[dichvu_id] [int] NULL,
	[khachhang_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[danhgia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tb_DanhGiaChiTiet]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_DanhGiaChiTiet](
	[danhgiachitiet_id] [int] IDENTITY(1,1) NOT NULL,
	[danhgiachitiet_image] [nvarchar](max) NULL,
	[danhgiachitiet_noidung] [nvarchar](max) NULL,
	[danhgiachitiet_binhchon] [nvarchar](max) NULL,
	[danhgia_id] [int] NULL,
	[danhgiachitiet_ngaylap] [date] NULL,
	[danhgiachitiet_hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[danhgiachitiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_DichVuGiaoDich]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_DichVuGiaoDich](
	[dvGiaoDich_id] [int] IDENTITY(1,1) NOT NULL,
	[dvGiaoDich_trangthai] [bit] NULL,
	[dvGiaoDich_ngay] [date] NULL,
	[dvGiaoDich_gio] [nvarchar](max) NULL,
	[dvGiaoDich_slKhach] [int] NULL,
	[dvGiaoDich_capnhatgia] [bit] NULL,
	[dvGiaoDich_code] [nvarchar](max) NULL,
	[dvGiaoDich_giatien] [nvarchar](max) NULL,
	[dvGiaoDich_tongtien] [nvarchar](max) NULL,
	[username_id] [int] NULL,
	[dv_tuchon_id] [int] NULL,
	[luutam_id] [int] NULL,
	[luuSpAdminId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dvGiaoDich_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_DonHangGiaoDich]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_DonHangGiaoDich](
	[dhgd_id] [int] IDENTITY(1,1) NOT NULL,
	[dhgd_code] [nvarchar](max) NULL,
	[luunbAdmin_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dhgd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_Heart]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_Heart](
	[heart_id] [int] IDENTITY(1,1) NOT NULL,
	[sanpham_id] [int] NULL,
	[khachhang_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[heart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tb_HoaDon]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_HoaDon](
	[hoadon_id] [int] IDENTITY(1,1) NOT NULL,
	[hoadon_code] [nvarchar](max) NULL,
	[hoadon_createdate] [datetime] NULL,
	[hoadon_giovao] [nvarchar](max) NULL,
	[khachhang_id] [int] NULL,
	[hoadon_soluongkhachhang] [int] NULL,
	[hoadon_magiamgia] [int] NULL,
	[hoadon_tongtien] [float] NULL,
	[hoadon_diachigiaohang] [nvarchar](max) NULL,
	[hoadon_sodienthoaikhachhang] [nvarchar](max) NULL,
	[hoadon_hidden] [nvarchar](max) NULL,
	[hoadontam_LoaiThanhToan] [nvarchar](max) NULL,
	[hoadon_tinhtrang] [nvarchar](max) NULL,
	[hoadon_TenKhachHang] [nvarchar](max) NULL,
	[hoadon_imageThanhToan] [nvarchar](max) NULL,
	[hoadon_phaitra] [nvarchar](max) NULL,
	[hoadon_tinhtrang_bill] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[hoadon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_HoaDon_HinhAnhChuyenKhoan]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_HoaDon_HinhAnhChuyenKhoan](
	[hinhanh_id] [int] IDENTITY(1,1) NOT NULL,
	[hinhanh_image] [nvarchar](max) NULL,
	[hoadon_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hinhanh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_HoaDonChiTiet]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_HoaDonChiTiet](
	[hoadonchitiet_id] [int] IDENTITY(1,1) NOT NULL,
	[sanpham_id] [int] NULL,
	[hoadonchitiet_soluong] [int] NULL,
	[hoadonchitiet_dongia] [int] NULL,
	[hoadonchitiet_thanhtien] [int] NULL,
	[hoadon_id] [int] NULL,
	[hoadonchitiettam_image] [nvarchar](max) NULL,
	[hoadonchitiettam_noidungchonmaukhachhang] [nvarchar](max) NULL,
	[hoadonchitiet_image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[hoadonchitiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_HomThuGopY]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_HomThuGopY](
	[homthugopy_id] [int] IDENTITY(1,1) NOT NULL,
	[homthugopy_content] [nvarchar](max) NULL,
	[homthugopy_loai] [nvarchar](max) NULL,
	[khachhang_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[homthugopy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_KhachHang]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_KhachHang](
	[khachhang_id] [int] IDENTITY(1,1) NOT NULL,
	[khachhang_name] [nvarchar](max) NULL,
	[khachhang_gmail] [nvarchar](max) NULL,
	[khachhang_ngaysinh] [date] NULL,
	[khachhang_sodienthoai] [nvarchar](max) NULL,
	[khachhang_password] [nvarchar](max) NULL,
	[hidden] [bit] NULL,
	[khachhang_username] [varchar](20) NULL,
	[khachhang_avatar] [nvarchar](max) NULL,
	[khachhang_diachi] [nvarchar](max) NULL,
	[khachhang_hang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[khachhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_LoaiMaGiamGia]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_LoaiMaGiamGia](
	[loaimagiamgia_id] [int] IDENTITY(1,1) NOT NULL,
	[loaimagiamgia_name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[loaimagiamgia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_LoaiSanPham]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_LoaiSanPham](
	[loaisanpham_id] [int] IDENTITY(1,1) NOT NULL,
	[loaisanpham_name] [nvarchar](max) NULL,
	[loaisanpham_hidden] [bit] NULL,
	[title_web] [nvarchar](max) NULL,
	[meta_title] [nvarchar](max) NULL,
	[meta_keywords] [nvarchar](max) NULL,
	[meta_image] [nvarchar](max) NULL,
	[h1_seo] [nvarchar](max) NULL,
	[link_seo] [nvarchar](max) NULL,
	[meta_description] [nvarchar](max) NULL,
	[loaisanpham_image] [nvarchar](max) NULL,
	[sanpham_parent] [varchar](max) NULL,
 CONSTRAINT [PK__tb_LoaiS__BF2DFAD22CF4A189] PRIMARY KEY CLUSTERED 
(
	[loaisanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_MaGiamGia]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_MaGiamGia](
	[magiamgia_id] [int] IDENTITY(1,1) NOT NULL,
	[magiamgia_name] [nvarchar](max) NULL,
	[magiamgia_color] [nvarchar](max) NULL,
	[magiamgia_soluong] [int] NULL,
	[magiamgia_ngaybatdau] [date] NULL,
	[magiamgia_ngayketthuc] [date] NULL,
	[magiamgia_sogiam] [int] NULL,
	[magiamgia_hiden] [bit] NULL,
	[magiamgia_noidung] [nvarchar](max) NULL,
	[magiamgia_code] [nvarchar](max) NULL,
	[magiamgia_owned] [bit] NULL,
	[magiamgia_khachhangid] [int] NULL,
	[loaigiamgia_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[magiamgia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_MaGiamGiaCuaKhachHang]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_MaGiamGiaCuaKhachHang](
	[magiamgiacuakhachhang_id] [int] IDENTITY(1,1) NOT NULL,
	[magiamgia_id] [int] NULL,
	[khachhang_id] [int] NULL,
	[username_id] [int] NULL,
	[magiagiacuakhachhanghang_tinhtrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[magiamgiacuakhachhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tb_News]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_News](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[news_title] [nvarchar](max) NULL,
	[news_summary] [nvarchar](max) NULL,
	[news_content] [nvarchar](max) NULL,
	[news_image] [nvarchar](max) NULL,
	[news_datecreate] [datetime] NULL,
	[news_active] [bit] NULL,
	[newscate_id] [int] NULL,
	[meta_keywords] [nvarchar](max) NULL,
	[meta_title] [nvarchar](max) NULL,
	[link_seo] [nvarchar](max) NULL,
	[meta_description] [nvarchar](max) NULL,
	[meta_image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_NewsCate]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_NewsCate](
	[newscate_id] [int] IDENTITY(1,1) NOT NULL,
	[newscate_title] [nvarchar](max) NULL,
	[newscate_position] [int] NULL,
	[newscate_active] [bit] NULL,
	[meta_keywords] [nvarchar](max) NULL,
	[meta_title] [nvarchar](max) NULL,
	[link_seo] [nvarchar](max) NULL,
	[meta_description] [nvarchar](max) NULL,
	[meta_image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[newscate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_QuanLySlide]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_QuanLySlide](
	[slide_id] [int] IDENTITY(1,1) NOT NULL,
	[slide_create] [date] NULL,
	[slide_img] [nvarchar](max) NULL,
	[slide_content] [nvarchar](max) NULL,
	[slide_hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_SanPham]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_SanPham](
	[sanpham_id] [int] IDENTITY(1,1) NOT NULL,
	[sanpham_name] [nvarchar](max) NULL,
	[sanpham_news] [nvarchar](max) NULL,
	[sanpham_image] [nvarchar](max) NULL,
	[sanpham_giatien] [int] NULL,
	[loaisanpham_id] [int] NULL,
	[sanpham_new] [bit] NULL,
	[sanpham_representative] [bit] NULL,
	[sanpham_hidden] [bit] NULL,
	[title_web] [nvarchar](max) NULL,
	[meta_title] [nvarchar](max) NULL,
	[meta_keywords] [nvarchar](max) NULL,
	[meta_image] [nvarchar](max) NULL,
	[h1_seo] [nvarchar](max) NULL,
	[link_seo] [nvarchar](max) NULL,
	[sanpham_parent] [varchar](max) NULL,
	[sanpham_luotmua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_Slide]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_Slide](
	[slide_id] [int] IDENTITY(1,1) NOT NULL,
	[slide_image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_ThongTinChiNhanh]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_ThongTinChiNhanh](
	[thongtinchinhanh_id] [int] IDENTITY(1,1) NOT NULL,
	[thongtinchinhanh_name] [nvarchar](max) NULL,
	[thongtinchinhanh_image] [nvarchar](max) NULL,
	[thongtinchinhanh_sodiemthoai] [nvarchar](max) NULL,
	[thongtinchinhanh_diachi] [nvarchar](max) NULL,
	[thongtinchinhanh_gioithieu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[thongtinchinhanh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_ThongTinChiNhanhImage]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_ThongTinChiNhanhImage](
	[thongtinchinhanhimage_id] [int] IDENTITY(1,1) NOT NULL,
	[thongtinchinhanhimage_image] [nvarchar](max) NULL,
	[thongtinchinhanh_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[thongtinchinhanhimage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tb_ThongTinLienHe]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tb_ThongTinLienHe](
	[thongtinlienhe_id] [int] IDENTITY(1,1) NOT NULL,
	[thongtinlienhe_facebook] [nvarchar](max) NULL,
	[thongtinlienhe_zalo] [nvarchar](max) NULL,
	[thongtinlienhe_instargram] [nvarchar](max) NULL,
	[thongtinlienhe_image] [nvarchar](max) NULL,
	[thongtinlienhe_sodienthoai] [nvarchar](max) NULL,
	[thongtinlienhe_diachi] [nvarchar](max) NULL,
	[thongtinlienhe_youtube] [nvarchar](max) NULL,
	[thongtinlienhe_gmail] [nvarchar](max) NULL,
	[thongtinlienhe_website] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[thongtinlienhe_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tbThongBaoTuQuanTri]    Script Date: 4/4/2023 2:10:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tbThongBaoTuQuanTri](
	[thongbao_id] [int] IDENTITY(1,1) NOT NULL,
	[thongbao_content] [nvarchar](max) NULL,
	[thongbao_link] [nvarchar](max) NULL,
	[khachhang_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[thongbao_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [admin_AccessGroupUserForm]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [admin_Form] ([form_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [admin_AccessGroupUserForm]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [admin_AccessGroupUserModule]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [admin_AccessGroupUserModule]  WITH CHECK ADD FOREIGN KEY([module_id])
REFERENCES [admin_Module] ([module_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [admin_AccessUserForm]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [admin_Form] ([form_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [admin_AccessUserForm]  WITH CHECK ADD FOREIGN KEY([username_id])
REFERENCES [admin_User] ([username_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [admin_Form]  WITH CHECK ADD FOREIGN KEY([module_id])
REFERENCES [admin_Module] ([module_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [admin_User]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
GO



ALTER TABLE tb_ChiaSe
ADD FOREIGN KEY (khachhang_id) REFERENCES tb_KhachHang(khachhang_id);

ALTER TABLE tb_DanhGia
ADD FOREIGN KEY (dichvu_id) REFERENCES tb_DichVuGiaoDich(dvGiaoDich_id);

ALTER TABLE tb_DanhGia
ADD FOREIGN KEY (khachhang_id) REFERENCES tb_KhachHang(khachhang_id);

ALTER TABLE tb_DanhGiaChiTiet
ADD FOREIGN KEY (danhgia_id) REFERENCES tb_DanhGia(danhgia_id);

ALTER TABLE tb_DichVuGiaoDich
ADD FOREIGN KEY (username_id) REFERENCES admin_User(username_id);

ALTER TABLE tb_Heart
ADD FOREIGN KEY (sanpham_id) REFERENCES tb_SanPham(sanpham_id);

ALTER TABLE tb_Heart
ADD FOREIGN KEY (khachhang_id) REFERENCES tb_KhachHang(khachhang_id);

ALTER TABLE tb_HoaDon
ADD FOREIGN KEY (khachhang_id) REFERENCES tb_KhachHang(khachhang_id);

ALTER TABLE tb_HoaDon_HinhAnhChuyenKhoan
ADD FOREIGN KEY (hoadon_id) REFERENCES tb_HoaDon(hoadon_id);

ALTER TABLE tb_HoaDonChiTiet
ADD FOREIGN KEY (sanpham_id) REFERENCES tb_SanPham(sanpham_id);

ALTER TABLE tb_HoaDonChiTiet
ADD FOREIGN KEY (hoadon_id) REFERENCES tb_HoaDon(hoadon_id);

ALTER TABLE tb_HomThuGopY
ADD FOREIGN KEY (khachhang_id) REFERENCES tb_KhachHang(khachhang_id);

ALTER TABLE tb_MaGiamGia
ADD FOREIGN KEY (loaigiamgia_id) REFERENCES tb_LoaiMaGiamGia(loaimagiamgia_id);

ALTER TABLE tb_MaGiamGiaCuaKhachHang
ADD FOREIGN KEY (magiamgia_id) REFERENCES tb_MaGiamGia(magiamgia_id);

ALTER TABLE tb_MaGiamGiaCuaKhachHang
ADD FOREIGN KEY (khachhang_id) REFERENCES tb_KhachHang(khachhang_id);

ALTER TABLE tb_MaGiamGiaCuaKhachHang
ADD FOREIGN KEY (username_id) REFERENCES admin_User(username_id);

ALTER TABLE tb_News
ADD FOREIGN KEY (newscate_id) REFERENCES tb_NewsCate(newscate_id);

ALTER TABLE tb_SanPham
ADD FOREIGN KEY (loaisanpham_id) REFERENCES tb_LoaiSanPham(loaisanpham_id);

ALTER TABLE tb_ThongTinChiNhanhImage
ADD FOREIGN KEY (thongtinchinhanh_id) REFERENCES tb_ThongTinChiNhanh(thongtinchinhanh_id);

ALTER TABLE tbThongBaoTuQuanTri
ADD FOREIGN KEY (khachhang_id) REFERENCES tb_KhachHang(khachhang_id);

alter table tb_KhachHang
add thongtinchinhanh_id int

ALTER TABLE tb_KhachHang
ADD FOREIGN KEY (thongtinchinhanh_id) REFERENCES tb_ThongTinChiNhanh(thongtinchinhanh_id);

alter table admin_User
add thongtinchinhanh_id int

ALTER TABLE admin_User
ADD FOREIGN KEY (thongtinchinhanh_id) REFERENCES tb_ThongTinChiNhanh(thongtinchinhanh_id);