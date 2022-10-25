create database QuanLyCuaHangQuaoAo
GO

USE [QuanLyCuaHangQuaoAo]
GO
/****** Object:  Table [dbo].[Chi_Tiet_Hoa_Don]    Script Date: 2022-10-25 01:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Hoa_Don](
	[maHoaDon] [nchar](10) NOT NULL,
	[maSanPham] [nchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [MaHoaDon_MaSanPham] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC,
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoa_Don]    Script Date: 2022-10-25 01:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa_Don](
	[maHoaDon] [nchar](10) NOT NULL,
	[ngayDat] [datetime] NOT NULL,
	[trangThai] [bit] NOT NULL,
	[maNhanVien] [nchar](10) NOT NULL,
	[maKhachHang] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Hoa_Don] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khach_Hang]    Script Date: 2022-10-25 01:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach_Hang](
	[maKhachHang] [nchar](10) NOT NULL,
	[tenKhachHang] [nvarchar](50) NOT NULL,
	[soDienThoai] [nchar](10) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
 CONSTRAINT [PK_Khach_Hang] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai_San_Pham]    Script Date: 2022-10-25 01:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_San_Pham](
	[maLoaiSanPham] [nchar](10) NOT NULL,
	[tenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Loai_San_Pham] PRIMARY KEY CLUSTERED 
(
	[maLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nha_Cung_Cap]    Script Date: 2022-10-25 01:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha_Cung_Cap](
	[maNhaCungCap] [nchar](10) NOT NULL,
	[tenNhaCungCap] [nvarchar](50) NOT NULL,
	[ngayHopTac] [datetime] NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [nchar](10) NOT NULL,
	[email] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Nha_Cung_Cap] PRIMARY KEY CLUSTERED 
(
	[maNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhan_Vien]    Script Date: 2022-10-25 01:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan_Vien](
	[maNhanVien] [nchar](10) NOT NULL,
	[tenNhanVien] [nvarchar](50) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[chucVu] [varchar](10) NOT NULL,
	[trangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Nhan_Vien] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[San_Pham]    Script Date: 2022-10-25 01:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[San_Pham](
	[maSanPham] [nchar](10) NOT NULL,
	[tenSanPham] [nvarchar](50) NOT NULL,
	[moTa] [nvarchar](50) NOT NULL,
	[donGia] [float] NOT NULL,
	[hinhAnh] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[giamGia] [float] NULL,
	[kichThuoc] [nchar](10) NOT NULL,
	[chatLieu] [nvarchar](50) NOT NULL,
	[mauSac] [nvarchar](50) NOT NULL,
	[gioiTinh] [nvarchar](10) NOT NULL,
	[trangThai] [nvarchar](50) NOT NULL,
	[maLoaiSanPham] [nchar](10) NOT NULL,
	[maNhaCungCap] [nchar](10) NOT NULL,
 CONSTRAINT [PK_San_Pham] PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tai_Khoan]    Script Date: 2022-10-25 01:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tai_Khoan](
	[maNhanVien] [nchar](10) NOT NULL,
	[matKhau] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Tai_Khoan] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH001     ', N'Thuan Le', N'0990990990', 0)
GO
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV001     ', N'Thuan', 1, CAST(N'2022-10-12' AS Date), N'thuan@gmail.com', N'NVBH', 1)
GO
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV001     ', N'a                                                 ')
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Chi_Tiet_Hoa_Don_Hoa_Don] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[Hoa_Don] ([maHoaDon])
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] CHECK CONSTRAINT [FK_Chi_Tiet_Hoa_Don_Hoa_Don]
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Chi_Tiet_Hoa_Don_San_Pham] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[San_Pham] ([maSanPham])
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] CHECK CONSTRAINT [FK_Chi_Tiet_Hoa_Don_San_Pham]
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_Don_Khach_Hang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[Khach_Hang] ([maKhachHang])
GO
ALTER TABLE [dbo].[Hoa_Don] CHECK CONSTRAINT [FK_Hoa_Don_Khach_Hang]
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_Don_Nhan_Vien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[Nhan_Vien] ([maNhanVien])
GO
ALTER TABLE [dbo].[Hoa_Don] CHECK CONSTRAINT [FK_Hoa_Don_Nhan_Vien]
GO
ALTER TABLE [dbo].[San_Pham]  WITH CHECK ADD  CONSTRAINT [FK_San_Pham_Loai_San_Pham] FOREIGN KEY([maLoaiSanPham])
REFERENCES [dbo].[Loai_San_Pham] ([maLoaiSanPham])
GO
ALTER TABLE [dbo].[San_Pham] CHECK CONSTRAINT [FK_San_Pham_Loai_San_Pham]
GO
ALTER TABLE [dbo].[San_Pham]  WITH CHECK ADD  CONSTRAINT [FK_San_Pham_Nha_Cung_Cap] FOREIGN KEY([maNhaCungCap])
REFERENCES [dbo].[Nha_Cung_Cap] ([maNhaCungCap])
GO
ALTER TABLE [dbo].[San_Pham] CHECK CONSTRAINT [FK_San_Pham_Nha_Cung_Cap]
GO
ALTER TABLE [dbo].[Tai_Khoan]  WITH CHECK ADD  CONSTRAINT [FK_Tai_Khoan_Nhan_Vien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[Nhan_Vien] ([maNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tai_Khoan] CHECK CONSTRAINT [FK_Tai_Khoan_Nhan_Vien]
GO
