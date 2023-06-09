USE [salabeauty]
GO
/****** Object:  DatabaseRole [MSmerge_509C6D4EB9D840C8A2C14567DE2F8E66]    Script Date: 05/05/2023 2:21:20 CH ******/
CREATE ROLE [MSmerge_509C6D4EB9D840C8A2C14567DE2F8E66]
GO
/****** Object:  DatabaseRole [MSmerge_90E83CB3B0344C1591F41217101BAE96]    Script Date: 05/05/2023 2:21:20 CH ******/
CREATE ROLE [MSmerge_90E83CB3B0344C1591F41217101BAE96]
GO
/****** Object:  DatabaseRole [MSmerge_PAL_role]    Script Date: 05/05/2023 2:21:20 CH ******/
CREATE ROLE [MSmerge_PAL_role]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_509C6D4EB9D840C8A2C14567DE2F8E66]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_90E83CB3B0344C1591F41217101BAE96]
GO
/****** Object:  Schema [MSmerge_PAL_role]    Script Date: 05/05/2023 2:21:20 CH ******/
CREATE SCHEMA [MSmerge_PAL_role]
GO
/****** Object:  Table [dbo].[admin_AccessGroupUserForm]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessGroupUserForm](
	[guf_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[guf_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[form_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[guf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_AccessGroupUserModule]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessGroupUserModule](
	[gum_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[gum_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[module_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_AccessUserForm]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessUserForm](
	[uf_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[uf_active] [bit] NULL,
	[username_id] [int] NULL,
	[form_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_Form]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_Form](
	[form_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[form_position] [int] NULL,
	[form_name] [nvarchar](max) NULL,
	[form_link] [nvarchar](max) NULL,
	[form_active] [bit] NULL,
	[module_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_GroupUser]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_GroupUser](
	[groupuser_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[groupuser_name] [nvarchar](max) NULL,
	[groupuser_active] [bit] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[groupuser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_Module]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_Module](
	[module_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[module_position] [int] NULL,
	[module_name] [nvarchar](max) NULL,
	[module_icon] [nvarchar](max) NULL,
	[module_active] [bit] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[module_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_User]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_User](
	[username_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[username_username] [nvarchar](max) NULL,
	[username_password] [nvarchar](max) NULL,
	[username_fullname] [nvarchar](max) NULL,
	[username_gender] [bit] NULL,
	[username_phone] [nvarchar](max) NULL,
	[username_email] [nvarchar](max) NULL,
	[username_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[thongtinchinhanh_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ChiaSe]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ChiaSe](
	[chiase_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[chiase_code] [nvarchar](max) NULL,
	[khachhang_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[chiase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_DanhGia]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DanhGia](
	[danhgia_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[dichvu_id] [int] NULL,
	[khachhang_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[danhgia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_DanhGiaChiTiet]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DanhGiaChiTiet](
	[danhgiachitiet_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[danhgiachitiet_image] [nvarchar](max) NULL,
	[danhgiachitiet_noidung] [nvarchar](max) NULL,
	[danhgiachitiet_binhchon] [nvarchar](max) NULL,
	[danhgia_id] [int] NULL,
	[danhgiachitiet_ngaylap] [date] NULL,
	[danhgiachitiet_hidden] [bit] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[danhgiachitiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_DichVuGiaoDich]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DichVuGiaoDich](
	[dvGiaoDich_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dvGiaoDich_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_DonHangGiaoDich]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DonHangGiaoDich](
	[dhgd_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[dhgd_code] [nvarchar](max) NULL,
	[luunbAdmin_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dhgd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Heart]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Heart](
	[heart_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[sanpham_id] [int] NULL,
	[khachhang_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[heart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HoaDon]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HoaDon](
	[hoadon_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hoadon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HoaDon_HinhAnhChuyenKhoan]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HoaDon_HinhAnhChuyenKhoan](
	[hinhanh_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hinhanh_image] [nvarchar](max) NULL,
	[hoadon_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hinhanh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HoaDonChiTiet]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HoaDonChiTiet](
	[hoadonchitiet_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[sanpham_id] [int] NULL,
	[hoadonchitiet_soluong] [int] NULL,
	[hoadonchitiet_dongia] [int] NULL,
	[hoadonchitiet_thanhtien] [int] NULL,
	[hoadon_id] [int] NULL,
	[hoadonchitiettam_image] [nvarchar](max) NULL,
	[hoadonchitiettam_noidungchonmaukhachhang] [nvarchar](max) NULL,
	[hoadonchitiet_image] [nvarchar](max) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hoadonchitiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HomThuGopY]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HomThuGopY](
	[homthugopy_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[homthugopy_content] [nvarchar](max) NULL,
	[homthugopy_loai] [nvarchar](max) NULL,
	[khachhang_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[homthugopy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_KhachHang]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_KhachHang](
	[khachhang_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[thongtinchinhanh_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[khachhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_LoaiMaGiamGia]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LoaiMaGiamGia](
	[loaimagiamgia_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[loaimagiamgia_name] [nvarchar](max) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loaimagiamgia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_LoaiSanPham]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LoaiSanPham](
	[loaisanpham_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK__tb_LoaiS__BF2DFAD22CF4A189] PRIMARY KEY CLUSTERED 
(
	[loaisanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_MaGiamGia]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_MaGiamGia](
	[magiamgia_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[magiamgia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_MaGiamGiaCuaKhachHang]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_MaGiamGiaCuaKhachHang](
	[magiamgiacuakhachhang_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[magiamgia_id] [int] NULL,
	[khachhang_id] [int] NULL,
	[username_id] [int] NULL,
	[magiagiacuakhachhanghang_tinhtrang] [bit] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[magiamgiacuakhachhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_News]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_News](
	[news_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NewsCate]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NewsCate](
	[newscate_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[newscate_title] [nvarchar](max) NULL,
	[newscate_position] [int] NULL,
	[newscate_active] [bit] NULL,
	[meta_keywords] [nvarchar](max) NULL,
	[meta_title] [nvarchar](max) NULL,
	[link_seo] [nvarchar](max) NULL,
	[meta_description] [nvarchar](max) NULL,
	[meta_image] [nvarchar](max) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[newscate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_QuanLySlide]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuanLySlide](
	[slide_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[slide_create] [date] NULL,
	[slide_img] [nvarchar](max) NULL,
	[slide_content] [nvarchar](max) NULL,
	[slide_hidden] [bit] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_SanPham]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SanPham](
	[sanpham_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Slide]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Slide](
	[slide_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[slide_image] [nvarchar](max) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinChiNhanh]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinChiNhanh](
	[thongtinchinhanh_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[thongtinchinhanh_name] [nvarchar](max) NULL,
	[thongtinchinhanh_image] [nvarchar](max) NULL,
	[thongtinchinhanh_sodiemthoai] [nvarchar](max) NULL,
	[thongtinchinhanh_diachi] [nvarchar](max) NULL,
	[thongtinchinhanh_gioithieu] [nvarchar](max) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[thongtinchinhanh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinChiNhanhImage]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinChiNhanhImage](
	[thongtinchinhanhimage_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[thongtinchinhanhimage_image] [nvarchar](max) NULL,
	[thongtinchinhanh_id] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[thongtinchinhanhimage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ThongTinLienHe]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ThongTinLienHe](
	[thongtinlienhe_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[thongtinlienhe_facebook] [nvarchar](max) NULL,
	[thongtinlienhe_zalo] [nvarchar](max) NULL,
	[thongtinlienhe_instargram] [nvarchar](max) NULL,
	[thongtinlienhe_image] [nvarchar](max) NULL,
	[thongtinlienhe_sodienthoai] [nvarchar](max) NULL,
	[thongtinlienhe_diachi] [nvarchar](max) NULL,
	[thongtinlienhe_youtube] [nvarchar](max) NULL,
	[thongtinlienhe_gmail] [nvarchar](max) NULL,
	[thongtinlienhe_website] [nvarchar](max) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[thongtinlienhe_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbThongBaoTuQuanTri]    Script Date: 05/05/2023 2:21:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbThongBaoTuQuanTri](
	[thongbao_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[thongbao_content] [nvarchar](max) NULL,
	[thongbao_link] [nvarchar](max) NULL,
	[khachhang_id] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[thongbao_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[admin_AccessGroupUserForm] ADD  CONSTRAINT [MSmerge_df_rowguid_6018A314EA75492F951442F26FDE140F]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule] ADD  CONSTRAINT [MSmerge_df_rowguid_C992F44696CA410E9D4C8C6F1208BB08]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[admin_AccessUserForm] ADD  CONSTRAINT [MSmerge_df_rowguid_B11A88A42850488DA2680122BD970DE1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[admin_Form] ADD  CONSTRAINT [MSmerge_df_rowguid_DBEC28B7038F418191F464E57EF00433]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[admin_GroupUser] ADD  CONSTRAINT [MSmerge_df_rowguid_FFA67DBF50F04631889F1AC3C596E200]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[admin_Module] ADD  CONSTRAINT [MSmerge_df_rowguid_CAD58AFCAA3748D29536512D9DBFB7E5]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[admin_User] ADD  CONSTRAINT [MSmerge_df_rowguid_D4B6C95368EF45BC8DE3CFD5D22F89A8]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_ChiaSe] ADD  CONSTRAINT [MSmerge_df_rowguid_6B55A6D1792F4098BA96F17B4154CE68]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_DanhGia] ADD  CONSTRAINT [MSmerge_df_rowguid_731F34DEBDA64249AF80A3B828A478A6]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_DanhGiaChiTiet] ADD  CONSTRAINT [MSmerge_df_rowguid_7FDCD134C5B547A0B87ADAABA7C7E371]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_DichVuGiaoDich] ADD  CONSTRAINT [MSmerge_df_rowguid_C9F37C11CC6C465C9D5A3D5EE1DD7998]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_DonHangGiaoDich] ADD  CONSTRAINT [MSmerge_df_rowguid_69E196C278384AA8BF880AF7F9AC3FD8]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_Heart] ADD  CONSTRAINT [MSmerge_df_rowguid_331DC928963145DEA572517C59E66F4E]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_HoaDon] ADD  CONSTRAINT [MSmerge_df_rowguid_789E93443063460684AD7B0E28EECC1B]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_HoaDon_HinhAnhChuyenKhoan] ADD  CONSTRAINT [MSmerge_df_rowguid_2464B8CFF5F2429CA0FEB92D448289A5]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_HoaDonChiTiet] ADD  CONSTRAINT [MSmerge_df_rowguid_F70AC49E916C45DC8AAFB0EB51CE5D60]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_HomThuGopY] ADD  CONSTRAINT [MSmerge_df_rowguid_CAB761B2753F4C8B9E258F9BD0FB83C6]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_KhachHang] ADD  CONSTRAINT [MSmerge_df_rowguid_1E9CEC8D25CD42CCA6D4FAD191D45591]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_LoaiMaGiamGia] ADD  CONSTRAINT [MSmerge_df_rowguid_B386BB1E834A45CFAF8DB1803703E697]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_LoaiSanPham] ADD  CONSTRAINT [MSmerge_df_rowguid_75A033F6FD2E4D3C923C3C88222F568E]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_MaGiamGia] ADD  CONSTRAINT [MSmerge_df_rowguid_57C6EB88D5BA440D894FDED1C00E463E]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_MaGiamGiaCuaKhachHang] ADD  CONSTRAINT [MSmerge_df_rowguid_92A102EA69C843C491D648A098D5FEA8]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_News] ADD  CONSTRAINT [MSmerge_df_rowguid_7FDDCB58474145259B0F8F571C02EBB6]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_NewsCate] ADD  CONSTRAINT [MSmerge_df_rowguid_658509C166C046C0B13398BB5C316F0E]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_QuanLySlide] ADD  CONSTRAINT [MSmerge_df_rowguid_7EE9748BB23443F594B0E07E241D58A1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_SanPham] ADD  CONSTRAINT [MSmerge_df_rowguid_A4A3333722DF428DBF3ED6EAD169CB26]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_Slide] ADD  CONSTRAINT [MSmerge_df_rowguid_3CBAD447EA2C4E39878D3EA14B0820FD]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_ThongTinChiNhanh] ADD  CONSTRAINT [MSmerge_df_rowguid_F1938D7E92EC43A5A34B699CDA121D0F]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_ThongTinChiNhanhImage] ADD  CONSTRAINT [MSmerge_df_rowguid_6F7D3B70846B4323A4DEC1E00D3B58B3]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tb_ThongTinLienHe] ADD  CONSTRAINT [MSmerge_df_rowguid_859BE687FC864191BC9DE0C45B7EF5D3]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[tbThongBaoTuQuanTri] ADD  CONSTRAINT [MSmerge_df_rowguid_9983A6B069E84F6394361A36FC1222ED]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[admin_AccessGroupUserForm]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[admin_Form] ([form_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserForm]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule]  WITH CHECK ADD FOREIGN KEY([module_id])
REFERENCES [dbo].[admin_Module] ([module_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessUserForm]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[admin_Form] ([form_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessUserForm]  WITH CHECK ADD FOREIGN KEY([username_id])
REFERENCES [dbo].[admin_User] ([username_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_Form]  WITH CHECK ADD FOREIGN KEY([module_id])
REFERENCES [dbo].[admin_Module] ([module_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_User]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[admin_User]  WITH CHECK ADD FOREIGN KEY([thongtinchinhanh_id])
REFERENCES [dbo].[tb_ThongTinChiNhanh] ([thongtinchinhanh_id])
GO
ALTER TABLE [dbo].[tb_ChiaSe]  WITH CHECK ADD FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[tb_KhachHang] ([khachhang_id])
GO
ALTER TABLE [dbo].[tb_DanhGia]  WITH CHECK ADD FOREIGN KEY([dichvu_id])
REFERENCES [dbo].[tb_DichVuGiaoDich] ([dvGiaoDich_id])
GO
ALTER TABLE [dbo].[tb_DanhGia]  WITH CHECK ADD FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[tb_KhachHang] ([khachhang_id])
GO
ALTER TABLE [dbo].[tb_DanhGiaChiTiet]  WITH CHECK ADD FOREIGN KEY([danhgia_id])
REFERENCES [dbo].[tb_DanhGia] ([danhgia_id])
GO
ALTER TABLE [dbo].[tb_DichVuGiaoDich]  WITH CHECK ADD FOREIGN KEY([username_id])
REFERENCES [dbo].[admin_User] ([username_id])
GO
ALTER TABLE [dbo].[tb_Heart]  WITH CHECK ADD FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[tb_KhachHang] ([khachhang_id])
GO
ALTER TABLE [dbo].[tb_Heart]  WITH CHECK ADD FOREIGN KEY([sanpham_id])
REFERENCES [dbo].[tb_SanPham] ([sanpham_id])
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH CHECK ADD FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[tb_KhachHang] ([khachhang_id])
GO
ALTER TABLE [dbo].[tb_HoaDon_HinhAnhChuyenKhoan]  WITH CHECK ADD FOREIGN KEY([hoadon_id])
REFERENCES [dbo].[tb_HoaDon] ([hoadon_id])
GO
ALTER TABLE [dbo].[tb_HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([hoadon_id])
REFERENCES [dbo].[tb_HoaDon] ([hoadon_id])
GO
ALTER TABLE [dbo].[tb_HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([sanpham_id])
REFERENCES [dbo].[tb_SanPham] ([sanpham_id])
GO
ALTER TABLE [dbo].[tb_HomThuGopY]  WITH CHECK ADD FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[tb_KhachHang] ([khachhang_id])
GO
ALTER TABLE [dbo].[tb_KhachHang]  WITH CHECK ADD FOREIGN KEY([thongtinchinhanh_id])
REFERENCES [dbo].[tb_ThongTinChiNhanh] ([thongtinchinhanh_id])
GO
ALTER TABLE [dbo].[tb_MaGiamGia]  WITH CHECK ADD FOREIGN KEY([loaigiamgia_id])
REFERENCES [dbo].[tb_LoaiMaGiamGia] ([loaimagiamgia_id])
GO
ALTER TABLE [dbo].[tb_MaGiamGiaCuaKhachHang]  WITH CHECK ADD FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[tb_KhachHang] ([khachhang_id])
GO
ALTER TABLE [dbo].[tb_MaGiamGiaCuaKhachHang]  WITH CHECK ADD FOREIGN KEY([magiamgia_id])
REFERENCES [dbo].[tb_MaGiamGia] ([magiamgia_id])
GO
ALTER TABLE [dbo].[tb_MaGiamGiaCuaKhachHang]  WITH CHECK ADD FOREIGN KEY([username_id])
REFERENCES [dbo].[admin_User] ([username_id])
GO
ALTER TABLE [dbo].[tb_News]  WITH CHECK ADD FOREIGN KEY([newscate_id])
REFERENCES [dbo].[tb_NewsCate] ([newscate_id])
GO
ALTER TABLE [dbo].[tb_SanPham]  WITH CHECK ADD FOREIGN KEY([loaisanpham_id])
REFERENCES [dbo].[tb_LoaiSanPham] ([loaisanpham_id])
GO
ALTER TABLE [dbo].[tb_ThongTinChiNhanhImage]  WITH CHECK ADD FOREIGN KEY([thongtinchinhanh_id])
REFERENCES [dbo].[tb_ThongTinChiNhanh] ([thongtinchinhanh_id])
GO
ALTER TABLE [dbo].[tbThongBaoTuQuanTri]  WITH CHECK ADD FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[tb_KhachHang] ([khachhang_id])
GO
ALTER TABLE [dbo].[admin_AccessGroupUserForm]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_17DF89FF_EE8C_4140_AD45_A75A8AA63A4E] CHECK NOT FOR REPLICATION (([guf_id]>=(1) AND [guf_id]<=(1001) OR [guf_id]>(1001) AND [guf_id]<=(2001)))
GO
ALTER TABLE [dbo].[admin_AccessGroupUserForm] CHECK CONSTRAINT [repl_identity_range_17DF89FF_EE8C_4140_AD45_A75A8AA63A4E]
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_67CCFA42_58A8_4FAC_919C_655AAB0879E3] CHECK NOT FOR REPLICATION (([gum_id]>=(1) AND [gum_id]<=(1001) OR [gum_id]>(1001) AND [gum_id]<=(2001)))
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule] CHECK CONSTRAINT [repl_identity_range_67CCFA42_58A8_4FAC_919C_655AAB0879E3]
GO
ALTER TABLE [dbo].[admin_AccessUserForm]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_D4ED19C5_C729_4EDF_B384_203A8967459E] CHECK NOT FOR REPLICATION (([uf_id]>=(1) AND [uf_id]<=(1001) OR [uf_id]>(1001) AND [uf_id]<=(2001)))
GO
ALTER TABLE [dbo].[admin_AccessUserForm] CHECK CONSTRAINT [repl_identity_range_D4ED19C5_C729_4EDF_B384_203A8967459E]
GO
ALTER TABLE [dbo].[admin_Form]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_844BFAA8_710C_46EC_8A1D_42888649FA10] CHECK NOT FOR REPLICATION (([form_id]>=(1) AND [form_id]<=(1001) OR [form_id]>(1001) AND [form_id]<=(2001)))
GO
ALTER TABLE [dbo].[admin_Form] CHECK CONSTRAINT [repl_identity_range_844BFAA8_710C_46EC_8A1D_42888649FA10]
GO
ALTER TABLE [dbo].[admin_GroupUser]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_DF699E6A_D2E2_4BB2_BF71_9430A2851FC5] CHECK NOT FOR REPLICATION (([groupuser_id]>=(1) AND [groupuser_id]<=(1001) OR [groupuser_id]>(1001) AND [groupuser_id]<=(2001)))
GO
ALTER TABLE [dbo].[admin_GroupUser] CHECK CONSTRAINT [repl_identity_range_DF699E6A_D2E2_4BB2_BF71_9430A2851FC5]
GO
ALTER TABLE [dbo].[admin_Module]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_D8CCA906_97D1_4D5D_9C2F_F4B9767ED860] CHECK NOT FOR REPLICATION (([module_id]>=(1) AND [module_id]<=(1001) OR [module_id]>(1001) AND [module_id]<=(2001)))
GO
ALTER TABLE [dbo].[admin_Module] CHECK CONSTRAINT [repl_identity_range_D8CCA906_97D1_4D5D_9C2F_F4B9767ED860]
GO
ALTER TABLE [dbo].[admin_User]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_92C26ABA_9E56_4F2B_91FF_D80427411AA1] CHECK NOT FOR REPLICATION (([username_id]>=(1) AND [username_id]<=(1001) OR [username_id]>(1001) AND [username_id]<=(2001)))
GO
ALTER TABLE [dbo].[admin_User] CHECK CONSTRAINT [repl_identity_range_92C26ABA_9E56_4F2B_91FF_D80427411AA1]
GO
ALTER TABLE [dbo].[tb_ChiaSe]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_D3886113_B049_4EC1_B87A_45F083B2E6BC] CHECK NOT FOR REPLICATION (([chiase_id]>=(1) AND [chiase_id]<=(1001) OR [chiase_id]>(1001) AND [chiase_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_ChiaSe] CHECK CONSTRAINT [repl_identity_range_D3886113_B049_4EC1_B87A_45F083B2E6BC]
GO
ALTER TABLE [dbo].[tb_DanhGia]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_AA35B3BD_099C_4E0C_B0C9_B2E054E26C63] CHECK NOT FOR REPLICATION (([danhgia_id]>=(1) AND [danhgia_id]<=(1001) OR [danhgia_id]>(1001) AND [danhgia_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_DanhGia] CHECK CONSTRAINT [repl_identity_range_AA35B3BD_099C_4E0C_B0C9_B2E054E26C63]
GO
ALTER TABLE [dbo].[tb_DanhGiaChiTiet]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_FF121E18_F764_4966_9C44_5B286565AA0F] CHECK NOT FOR REPLICATION (([danhgiachitiet_id]>=(1) AND [danhgiachitiet_id]<=(1001) OR [danhgiachitiet_id]>(1001) AND [danhgiachitiet_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_DanhGiaChiTiet] CHECK CONSTRAINT [repl_identity_range_FF121E18_F764_4966_9C44_5B286565AA0F]
GO
ALTER TABLE [dbo].[tb_DichVuGiaoDich]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_40236866_63CE_44F5_8A31_15336942C9F3] CHECK NOT FOR REPLICATION (([dvGiaoDich_id]>=(1) AND [dvGiaoDich_id]<=(1001) OR [dvGiaoDich_id]>(1001) AND [dvGiaoDich_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_DichVuGiaoDich] CHECK CONSTRAINT [repl_identity_range_40236866_63CE_44F5_8A31_15336942C9F3]
GO
ALTER TABLE [dbo].[tb_DonHangGiaoDich]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_35E25A93_5252_4422_9504_EF0A890765E5] CHECK NOT FOR REPLICATION (([dhgd_id]>=(1) AND [dhgd_id]<=(1001) OR [dhgd_id]>(1001) AND [dhgd_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_DonHangGiaoDich] CHECK CONSTRAINT [repl_identity_range_35E25A93_5252_4422_9504_EF0A890765E5]
GO
ALTER TABLE [dbo].[tb_Heart]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_2DE5588A_53FF_487A_9C42_1204FB7CB3FF] CHECK NOT FOR REPLICATION (([heart_id]>=(1) AND [heart_id]<=(1001) OR [heart_id]>(1001) AND [heart_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_Heart] CHECK CONSTRAINT [repl_identity_range_2DE5588A_53FF_487A_9C42_1204FB7CB3FF]
GO
ALTER TABLE [dbo].[tb_HoaDon]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_B4F97CE0_5AF7_4F46_A71A_DA825381976A] CHECK NOT FOR REPLICATION (([hoadon_id]>=(1) AND [hoadon_id]<=(1001) OR [hoadon_id]>(1001) AND [hoadon_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_HoaDon] CHECK CONSTRAINT [repl_identity_range_B4F97CE0_5AF7_4F46_A71A_DA825381976A]
GO
ALTER TABLE [dbo].[tb_HoaDon_HinhAnhChuyenKhoan]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_0988267D_F9AF_456E_85C8_F543F83274E1] CHECK NOT FOR REPLICATION (([hinhanh_id]>=(1) AND [hinhanh_id]<=(1001) OR [hinhanh_id]>(1001) AND [hinhanh_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_HoaDon_HinhAnhChuyenKhoan] CHECK CONSTRAINT [repl_identity_range_0988267D_F9AF_456E_85C8_F543F83274E1]
GO
ALTER TABLE [dbo].[tb_HoaDonChiTiet]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_99C2A8A9_4594_43A5_8FDB_5FCC9FFE09DD] CHECK NOT FOR REPLICATION (([hoadonchitiet_id]>=(1) AND [hoadonchitiet_id]<=(1001) OR [hoadonchitiet_id]>(1001) AND [hoadonchitiet_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_HoaDonChiTiet] CHECK CONSTRAINT [repl_identity_range_99C2A8A9_4594_43A5_8FDB_5FCC9FFE09DD]
GO
ALTER TABLE [dbo].[tb_HomThuGopY]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_5A864646_A05D_4C56_A38E_2A0A286006D1] CHECK NOT FOR REPLICATION (([homthugopy_id]>=(1) AND [homthugopy_id]<=(1001) OR [homthugopy_id]>(1001) AND [homthugopy_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_HomThuGopY] CHECK CONSTRAINT [repl_identity_range_5A864646_A05D_4C56_A38E_2A0A286006D1]
GO
ALTER TABLE [dbo].[tb_KhachHang]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_A35E5269_1DE1_4FD9_A2C1_9F4BC7568D30] CHECK NOT FOR REPLICATION (([khachhang_id]>=(1) AND [khachhang_id]<=(1001) OR [khachhang_id]>(1001) AND [khachhang_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_KhachHang] CHECK CONSTRAINT [repl_identity_range_A35E5269_1DE1_4FD9_A2C1_9F4BC7568D30]
GO
ALTER TABLE [dbo].[tb_LoaiMaGiamGia]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_2BAE86BF_945B_44DC_87F0_F7C5FDC56DA3] CHECK NOT FOR REPLICATION (([loaimagiamgia_id]>=(1) AND [loaimagiamgia_id]<=(1001) OR [loaimagiamgia_id]>(1001) AND [loaimagiamgia_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_LoaiMaGiamGia] CHECK CONSTRAINT [repl_identity_range_2BAE86BF_945B_44DC_87F0_F7C5FDC56DA3]
GO
ALTER TABLE [dbo].[tb_LoaiSanPham]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_1C320466_2314_4312_BB8E_BD762DB91288] CHECK NOT FOR REPLICATION (([loaisanpham_id]>=(1) AND [loaisanpham_id]<=(1001) OR [loaisanpham_id]>(1001) AND [loaisanpham_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_LoaiSanPham] CHECK CONSTRAINT [repl_identity_range_1C320466_2314_4312_BB8E_BD762DB91288]
GO
ALTER TABLE [dbo].[tb_MaGiamGia]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_F154BF70_A52E_432E_8415_E631C5A3AA08] CHECK NOT FOR REPLICATION (([magiamgia_id]>=(1) AND [magiamgia_id]<=(1001) OR [magiamgia_id]>(1001) AND [magiamgia_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_MaGiamGia] CHECK CONSTRAINT [repl_identity_range_F154BF70_A52E_432E_8415_E631C5A3AA08]
GO
ALTER TABLE [dbo].[tb_MaGiamGiaCuaKhachHang]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_6F0FB4BB_07E4_43FF_96A6_1CCBFEDBCBE6] CHECK NOT FOR REPLICATION (([magiamgiacuakhachhang_id]>=(1) AND [magiamgiacuakhachhang_id]<=(1001) OR [magiamgiacuakhachhang_id]>(1001) AND [magiamgiacuakhachhang_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_MaGiamGiaCuaKhachHang] CHECK CONSTRAINT [repl_identity_range_6F0FB4BB_07E4_43FF_96A6_1CCBFEDBCBE6]
GO
ALTER TABLE [dbo].[tb_News]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_6B4EC6E9_FE61_4A07_B864_DE6F1515E0B1] CHECK NOT FOR REPLICATION (([news_id]>=(1) AND [news_id]<=(1001) OR [news_id]>(1001) AND [news_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_News] CHECK CONSTRAINT [repl_identity_range_6B4EC6E9_FE61_4A07_B864_DE6F1515E0B1]
GO
ALTER TABLE [dbo].[tb_NewsCate]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_A7F1221E_F1D8_42A5_8F6F_2C1DE6E45D3F] CHECK NOT FOR REPLICATION (([newscate_id]>=(1) AND [newscate_id]<=(1001) OR [newscate_id]>(1001) AND [newscate_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_NewsCate] CHECK CONSTRAINT [repl_identity_range_A7F1221E_F1D8_42A5_8F6F_2C1DE6E45D3F]
GO
ALTER TABLE [dbo].[tb_QuanLySlide]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_A36012ED_19A4_4BAF_A2BF_CD7F6CE00E96] CHECK NOT FOR REPLICATION (([slide_id]>=(1) AND [slide_id]<=(1001) OR [slide_id]>(1001) AND [slide_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_QuanLySlide] CHECK CONSTRAINT [repl_identity_range_A36012ED_19A4_4BAF_A2BF_CD7F6CE00E96]
GO
ALTER TABLE [dbo].[tb_SanPham]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_2ECB7BAA_0537_4987_8596_76ED4FADE704] CHECK NOT FOR REPLICATION (([sanpham_id]>=(1) AND [sanpham_id]<=(1001) OR [sanpham_id]>(1001) AND [sanpham_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_SanPham] CHECK CONSTRAINT [repl_identity_range_2ECB7BAA_0537_4987_8596_76ED4FADE704]
GO
ALTER TABLE [dbo].[tb_Slide]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_6192AB12_FFCF_41E4_9E04_F72B08F6134F] CHECK NOT FOR REPLICATION (([slide_id]>=(1) AND [slide_id]<=(1001) OR [slide_id]>(1001) AND [slide_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_Slide] CHECK CONSTRAINT [repl_identity_range_6192AB12_FFCF_41E4_9E04_F72B08F6134F]
GO
ALTER TABLE [dbo].[tb_ThongTinChiNhanh]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_BF43009B_78AE_4203_9AED_CA5C94364794] CHECK NOT FOR REPLICATION (([thongtinchinhanh_id]>=(1) AND [thongtinchinhanh_id]<=(1001) OR [thongtinchinhanh_id]>(1001) AND [thongtinchinhanh_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_ThongTinChiNhanh] CHECK CONSTRAINT [repl_identity_range_BF43009B_78AE_4203_9AED_CA5C94364794]
GO
ALTER TABLE [dbo].[tb_ThongTinChiNhanhImage]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_3819710D_FDD8_4D2C_A8EF_7330879CF5E2] CHECK NOT FOR REPLICATION (([thongtinchinhanhimage_id]>=(1) AND [thongtinchinhanhimage_id]<=(1001) OR [thongtinchinhanhimage_id]>(1001) AND [thongtinchinhanhimage_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_ThongTinChiNhanhImage] CHECK CONSTRAINT [repl_identity_range_3819710D_FDD8_4D2C_A8EF_7330879CF5E2]
GO
ALTER TABLE [dbo].[tb_ThongTinLienHe]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_5B5B8DDE_99BF_4D5C_9AEB_E6D105286BE9] CHECK NOT FOR REPLICATION (([thongtinlienhe_id]>=(1) AND [thongtinlienhe_id]<=(1001) OR [thongtinlienhe_id]>(1001) AND [thongtinlienhe_id]<=(2001)))
GO
ALTER TABLE [dbo].[tb_ThongTinLienHe] CHECK CONSTRAINT [repl_identity_range_5B5B8DDE_99BF_4D5C_9AEB_E6D105286BE9]
GO
ALTER TABLE [dbo].[tbThongBaoTuQuanTri]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_80172D1D_FBEE_4A70_A714_6AB1025EB2D1] CHECK NOT FOR REPLICATION (([thongbao_id]>=(1) AND [thongbao_id]<=(1001) OR [thongbao_id]>(1001) AND [thongbao_id]<=(2001)))
GO
ALTER TABLE [dbo].[tbThongBaoTuQuanTri] CHECK CONSTRAINT [repl_identity_range_80172D1D_FBEE_4A70_A714_6AB1025EB2D1]
GO
