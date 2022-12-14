CREATE DATABASE QuanLyCuaHangQuanAoTheSky
GO
USE [QuanLyCuaHangQuanAoTheSky]
GO
/****** Object:  Table [dbo].[Chi_Tiet_Hoa_Don]    Script Date: 2022-12-15 07:36:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Hoa_Don](
	[maHoaDon] [nvarchar](20) NOT NULL,
	[maSanPham] [nvarchar](20) NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [MaHoaDon_MaSanPham] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC,
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoa_Don]    Script Date: 2022-12-15 07:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa_Don](
	[maHoaDon] [nvarchar](20) NOT NULL,
	[ngayDat] [datetime] NOT NULL,
	[trangThai] [bit] NOT NULL,
	[maNhanVien] [nvarchar](50) NOT NULL,
	[maKhachHang] [nvarchar](20) NOT NULL,
	[giamGia] [money] NULL,
 CONSTRAINT [PK_Hoa_Don] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khach_Hang]    Script Date: 2022-12-15 07:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach_Hang](
	[maKhachHang] [nvarchar](20) NOT NULL,
	[tenKhachHang] [nvarchar](50) NOT NULL,
	[soDienThoai] [varchar](10) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
 CONSTRAINT [PK_Khach_Hang] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai_San_Pham]    Script Date: 2022-12-15 07:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_San_Pham](
	[maLoaiSanPham] [nvarchar](20) NOT NULL,
	[tenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Loai_San_Pham] PRIMARY KEY CLUSTERED 
(
	[maLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nha_Cung_Cap]    Script Date: 2022-12-15 07:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha_Cung_Cap](
	[maNhaCungCap] [nvarchar](20) NOT NULL,
	[tenNhaCungCap] [nvarchar](50) NOT NULL,
	[ngayHopTac] [datetime] NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [varchar](10) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Nha_Cung_Cap] PRIMARY KEY CLUSTERED 
(
	[maNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhan_Vien]    Script Date: 2022-12-15 07:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan_Vien](
	[maNhanVien] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[San_Pham]    Script Date: 2022-12-15 07:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[San_Pham](
	[maSanPham] [nvarchar](20) NOT NULL,
	[tenSanPham] [nvarchar](50) NOT NULL,
	[moTa] [nvarchar](50) NOT NULL,
	[donGia] [money] NOT NULL,
	[hinhAnh] [nvarchar](max) NOT NULL,
	[soLuong] [int] NOT NULL,
	[giamGia] [money] NULL,
	[kichThuoc] [nvarchar](10) NOT NULL,
	[chatLieu] [nvarchar](50) NOT NULL,
	[mauSac] [nvarchar](50) NOT NULL,
	[gioiTinh] [nvarchar](10) NOT NULL,
	[trangThai] [nvarchar](50) NOT NULL,
	[maLoaiSanPham] [nvarchar](20) NOT NULL,
	[maNhaCungCap] [nvarchar](20) NOT NULL,
	[giaNhap] [money] NOT NULL,
 CONSTRAINT [PK_San_Pham] PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tai_Khoan]    Script Date: 2022-12-15 07:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tai_Khoan](
	[maNhanVien] [nvarchar](50) NOT NULL,
	[matKhau] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tai_Khoan] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1127073141', N'SP20221101125333', 20)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1127073526', N'SP20221101125331', 20)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1127073752', N'SP20221101125331', 20)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1127074008', N'SP20221101125323', 1)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1127090603', N'SP20221101125327', 5)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1127090603', N'SP20221101125332', 10)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1128132920', N'SP20221101125327', 5)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1128132920', N'SP20221101125332', 5)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1128133115', N'SP20221101125336', 5)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1128133115', N'SP20221101125340', 5)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1128133255', N'SP20221101125321', 5)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1128133255', N'SP20221101125333', 5)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1128133255', N'SP20221101125338', 5)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([maHoaDon], [maSanPham], [soLuong]) VALUES (N'HD1215183533', N'SP20221101125334', 1)
GO
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1127073141', CAST(N'2022-11-27T00:00:00.000' AS DateTime), 1, N'NV001', N'KH001', 10.0000)
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1127073526', CAST(N'2022-11-27T00:00:00.000' AS DateTime), 1, N'NV001', N'KH001', 1.0000)
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1127073752', CAST(N'2022-11-27T00:00:00.000' AS DateTime), 1, N'NV001', N'KH001', 3.0000)
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1127074008', CAST(N'2022-11-27T00:00:00.000' AS DateTime), 1, N'NV001', N'KH001', 4.0000)
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1127090603', CAST(N'2022-11-27T00:00:00.000' AS DateTime), 1, N'NV001', N'KH001', 5.0000)
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1128132920', CAST(N'2022-11-28T00:00:00.000' AS DateTime), 1, N'NV002', N'KH006', 7.0000)
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1128133115', CAST(N'2022-11-28T00:00:00.000' AS DateTime), 1, N'NV002', N'KH006', 8.0000)
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1128133255', CAST(N'2022-11-28T00:00:00.000' AS DateTime), 1, N'NV002', N'KH006', 9.0000)
INSERT [dbo].[Hoa_Don] ([maHoaDon], [ngayDat], [trangThai], [maNhanVien], [maKhachHang], [giamGia]) VALUES (N'HD1215183533', CAST(N'2022-12-15T00:00:00.000' AS DateTime), 1, N'NV001', N'KH005', 0.0000)
GO
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH001', N'Thuận Lê', N'0990990990', 1)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH002', N'Quân Nguyễn', N'0909002002', 1)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH003', N'Trần Trọng', N'0999999999', 1)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH004', N'Mai Thắng', N'0998998998', 1)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH005', N'Thanh Thủy', N'0997997997', 0)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH006', N'Thanh Nhã', N'0996996996', 0)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH007', N'Thành Thái', N'0995995995', 1)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH008', N'Cẩm Thủy', N'0994993993', 0)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH009', N'Nhung Mai', N'0991991991', 0)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH010', N'Gia Bảo', N'0993995996', 1)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH011', N'Văn Cao', N'0954932912', 1)
INSERT [dbo].[Khach_Hang] ([maKhachHang], [tenKhachHang], [soDienThoai], [gioiTinh]) VALUES (N'KH012', N'A Báo', N'0952912912', 1)
GO
INSERT [dbo].[Loai_San_Pham] ([maLoaiSanPham], [tenLoai]) VALUES (N'LSP20221101123621', N'Quần Dài')
INSERT [dbo].[Loai_San_Pham] ([maLoaiSanPham], [tenLoai]) VALUES (N'LSP20221101123622', N'Áo Sơ Mi')
INSERT [dbo].[Loai_San_Pham] ([maLoaiSanPham], [tenLoai]) VALUES (N'LSP20221101123623', N'Quần Short')
INSERT [dbo].[Loai_San_Pham] ([maLoaiSanPham], [tenLoai]) VALUES (N'LSP20221101123624', N'Áo Thun')
INSERT [dbo].[Loai_San_Pham] ([maLoaiSanPham], [tenLoai]) VALUES (N'LSP20221101123625', N'Bao tay')
GO
INSERT [dbo].[Nha_Cung_Cap] ([maNhaCungCap], [tenNhaCungCap], [ngayHopTac], [diaChi], [soDienThoai], [email]) VALUES (N'NCC20221101123821', N'Uniqlo', CAST(N'2022-11-01T00:00:00.000' AS DateTime), N'34 Hoàng Hoa Thám, HCM', N'0987440858', N'anhquanhino123@gmail.com')
INSERT [dbo].[Nha_Cung_Cap] ([maNhaCungCap], [tenNhaCungCap], [ngayHopTac], [diaChi], [soDienThoai], [email]) VALUES (N'NCC20221101123822', N'H&M', CAST(N'2022-11-01T00:00:00.000' AS DateTime), N'150 CMT8, HCM', N'0987440567', N'alo123@gmail.com')
INSERT [dbo].[Nha_Cung_Cap] ([maNhaCungCap], [tenNhaCungCap], [ngayHopTac], [diaChi], [soDienThoai], [email]) VALUES (N'NCC20221101123823', N'Lazada', CAST(N'2022-11-01T00:00:00.000' AS DateTime), N'200 Trần Bình Trọng, HCM', N'0987440256', N'healer@gmail.com')
INSERT [dbo].[Nha_Cung_Cap] ([maNhaCungCap], [tenNhaCungCap], [ngayHopTac], [diaChi], [soDienThoai], [email]) VALUES (N'NCC20221101123824', N'TiKi', CAST(N'2022-11-01T00:00:00.000' AS DateTime), N'75 Hồ Hoàn Kiếm, HN', N'0987447654', N'sunset@gmail.com')
INSERT [dbo].[Nha_Cung_Cap] ([maNhaCungCap], [tenNhaCungCap], [ngayHopTac], [diaChi], [soDienThoai], [email]) VALUES (N'NCC20221101123825', N'SenDo', CAST(N'2022-11-01T00:00:00.000' AS DateTime), N'102 Bát Tràng, HN', N'0987444444', N'moon@gmail.com')
INSERT [dbo].[Nha_Cung_Cap] ([maNhaCungCap], [tenNhaCungCap], [ngayHopTac], [diaChi], [soDienThoai], [email]) VALUES (N'NCC20221101123826', N'ZaRa', CAST(N'2022-11-01T00:00:00.000' AS DateTime), N'20 Hoa Lư, HN', N'0345640858', N'latte@gmail.com')
GO
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV001', N'Lê Võ Minh Thuận', 1, CAST(N'2001-02-22' AS Date), N'thuan22022001@gmail.com', N'NVQL', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV002', N'Trần Trọng', 1, CAST(N'2002-07-04' AS Date), N'trong2002tran@gmail.com', N'NVQL', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV003', N'Mai Văn Thắng', 1, CAST(N'2002-11-02' AS Date), N'thang2002dhcn@gmail.com', N'NVQL', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV004', N'Nguyễn Hoàng Anh Quân', 1, CAST(N'2000-11-04' AS Date), N'quannguyen@gmail.com', N'NVQL', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV005', N'Trần Văn A', 0, CAST(N'2002-11-17' AS Date), N'tranvana17112002@gmail.com', N'NVBH', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV006', N'Trần Văn B', 0, CAST(N'2002-10-10' AS Date), N'tranvanb10102002@gmail.com', N'NVBH', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV007', N'Trần Văn Nghĩa', 1, CAST(N'1997-06-02' AS Date), N'nghiatv@gmail.com', N'NVBH', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV008', N'Nguyễn Văn D', 1, CAST(N'1997-11-08' AS Date), N'nguyenvand1997@gmail.com', N'NVBH', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV009', N'Trần Văn E', 0, CAST(N'2000-11-14' AS Date), N'tranvane2000@gmail.com', N'NVBH', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV010', N'Mai Văn Sỹ', 1, CAST(N'2002-07-17' AS Date), N'maivansy2002@gmail.com', N'NVBH', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV011', N'Lê Văn Tám', 1, CAST(N'1988-08-04' AS Date), N'levantam1988@gmail.com', N'NVBH', 1)
INSERT [dbo].[Nhan_Vien] ([maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [email], [chucVu], [trangThai]) VALUES (N'NV012', N'Nguyễn Văn Bốn', 0, CAST(N'2003-08-12' AS Date), N'nguyenvanbon2003@gmail.com', N'NVBH', 1)
GO
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125321', N'Quần Dài Kaki', N'co giãn đàn hồi', 1300000.0000, N'./HinhAnh/ImageSanPham/Quần/images.jfif', 495, 0.2000, N'S', N'Kaki', N'Xanh', N'Nam', N'Đang kinh doanh', N'LSP20221101123621', N'NCC20221101123821', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125323', N'Quần Short Ultra Short', N'Rộng rãi', 2300000.0000, N'./HinhAnh/ImageSanPham/Quần/imagesQuanSot.jfif', 499, 0.2000, N'L', N'Vải tổng hợp', N'Tím', N'Nữ', N'Đang kinh doanh', N'LSP20221101123623', N'NCC20221101123823', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125324', N'Áo Thun Polo Cotton', N'Thoáng mát', 1450000.0000, N'./HinhAnh/ImageSanPham/Áo/Áo-thun-nam-Polo.jpg', 500, 0.2000, N'XL', N'Sợi Sorona', N'Vàng', N'Nam', N'Đang kinh doanh', N'LSP20221101123624', N'NCC20221101123824', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125325', N'Bao Tay Da Cá Sấu', N'Dễ sử dụng', 1500000.0000, N'./HinhAnh/ImageSanPham/Phụ kiện khác/7d7cc6547d766298d111fc3e986a23ce.jfif', 500, 0.2000, N'XXL', N'Vải lanh', N'Vàng', N'Nam', N'Đang kinh doanh', N'LSP20221101123625', N'NCC20221101123825', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125326', N'Quần Dài Kaki', N'co giãn đàn hồi', 300000.0000, N'./HinhAnh/ImageSanPham/Quần/images.jfif', 500, 0.2000, N'FreeSize', N'Jogger', N'Xanh', N'Nam', N'Đang kinh doanh', N'LSP20221101123621', N'NCC20221101123821', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125327', N'Áo Sơ Mi Nam Hàn Quốc', N'Lịch sự', 2000000.0000, N'./HinhAnh/ImageSanPham/Áo/ao-so-mi-nam-han-quoc6.jpg', 434, 0.2000, N'S', N'Cotton', N'Đỏ', N'Nam', N'Đang kinh doanh', N'LSP20221101123622', N'NCC20221101123822', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125328', N'Quần Short Ultra Short', N'Rộng rãi', 230000.0000, N'./HinhAnh/ImageSanPham/Quần/imagesQuanSot.jfif', 500, 0.2000, N'M', N'Vải tổng hợp', N'Tím', N'Nữ', N'Đang kinh doanh', N'LSP20221101123623', N'NCC20221101123823', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125329', N'Áo Thun Polo Cotton', N'Thoáng mát', 450000.0000, N'./HinhAnh/ImageSanPham/Áo/Áo-thun-nam-Polo.jpg', 500, 0.2000, N'L', N'Sợi Sorona', N'Vàng', N'Nam', N'Đang kinh doanh', N'LSP20221101123624', N'NCC20221101123824', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125330', N'Bao Tay Da Cá Sấu', N'Dễ sử dụng', 500000.0000, N'./HinhAnh/ImageSanPham/Phụ kiện khác/7d7cc6547d766298d111fc3e986a23ce.jfif', 500, 0.2000, N'XL', N'Vải lanh', N'Vàng', N'Nam', N'Đang kinh doanh', N'LSP20221101123625', N'NCC20221101123825', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125331', N'Quần Dài Kaki', N'co giãn đàn hồi', 300000.0000, N'./HinhAnh/ImageSanPham/Quần/images.jfif', 460, 0.2000, N'XXL', N'sợi Sorona', N'Xanh', N'Nam', N'Đang kinh doanh', N'LSP20221101123621', N'NCC20221101123821', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125332', N'Áo Sơ Mi Nam Hàn Quốc', N'Lịch sự', 200000.0000, N'./HinhAnh/ImageSanPham/Áo/ao-so-mi-nam-han-quoc6.jpg', 410, 0.2000, N'FreeSize', N'Cotton', N'Đỏ', N'Nam', N'Đang kinh doanh', N'LSP20221101123622', N'NCC20221101123822', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125333', N'Quần Short Ultra Short', N'Rộng rãi', 230000.0000, N'./HinhAnh/ImageSanPham/Quần/imagesQuanSot.jfif', 475, 0.2000, N'S', N'Vải tổng hợp', N'Tím', N'Nữ', N'Đang kinh doanh', N'LSP20221101123623', N'NCC20221101123823', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125334', N'Áo Thun Polo Cotton', N'Thoáng mát', 450000.0000, N'./HinhAnh/ImageSanPham/Áo/Áo-thun-nam-Polo.jpg', 499, 0.2000, N'M', N'Sợi Sorona', N'Vàng', N'Nam', N'Đang kinh doanh', N'LSP20221101123624', N'NCC20221101123824', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125335', N'Bao Tay Da Cá Sấu', N'Dễ sử dụng', 500000.0000, N'./HinhAnh/ImageSanPham/Phụ kiện khác/7d7cc6547d766298d111fc3e986a23ce.jfif', 500, 0.2000, N'L', N'Vải lanh', N'Vàng', N'Nam', N'Đang kinh doanh', N'LSP20221101123625', N'NCC20221101123825', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125336', N'Quần Dài Kaki', N'co giãn đàn hồi', 300000.0000, N'./HinhAnh/ImageSanPham/Quần/images.jfif', 495, 0.2000, N'XL', N'Kaki', N'Xanh', N'Nam', N'Đang kinh doanh', N'LSP20221101123621', N'NCC20221101123821', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125337', N'Áo Sơ Mi Nam Hàn Quốc', N'Lịch sự', 200000.0000, N'./HinhAnh/ImageSanPham/Áo/ao-so-mi-nam-han-quoc6.jpg', 500, 0.2000, N'XXL', N'Cotton', N'Đỏ', N'Nam', N'Đang kinh doanh', N'LSP20221101123622', N'NCC20221101123822', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125338', N'Quần Short Ultra Short', N'Rộng rãi', 230000.0000, N'./HinhAnh/ImageSanPham/Quần/imagesQuanSot.jfif', 485, 0.2000, N'FreeSize', N'Vải tổng hợp', N'Tím', N'Nữ', N'Đang kinh doanh', N'LSP20221101123623', N'NCC20221101123823', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125339', N'Áo Thun Polo Cotton', N'Thoáng mát', 450000.0000, N'./HinhAnh/ImageSanPham/Áo/Áo-thun-nam-Polo.jpg', 500, 0.2000, N'S', N'Sợi Sorona', N'Vàng', N'Nam', N'Đang kinh doanh', N'LSP20221101123624', N'NCC20221101123824', 100000.0000)
INSERT [dbo].[San_Pham] ([maSanPham], [tenSanPham], [moTa], [donGia], [hinhAnh], [soLuong], [giamGia], [kichThuoc], [chatLieu], [mauSac], [gioiTinh], [trangThai], [maLoaiSanPham], [maNhaCungCap], [giaNhap]) VALUES (N'SP20221101125340', N'Bao Tay Da Cá Sấu', N'Dễ sử dụng', 500000.0000, N'./HinhAnh/ImageSanPham/Phụ kiện khác/7d7cc6547d766298d111fc3e986a23ce.jfif', 435, 0.2000, N'M', N'Vải lanh', N'Vàng', N'Nam', N'Đang kinh doanh', N'LSP20221101123625', N'NCC20221101123825', 100000.0000)
GO
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV001', N'thuan')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV002', N'12345678')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV003', N'12345678')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV004', N'12345678')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV005', N'a')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV006', N'a')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV007', N'nghia')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV008', N'a')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV009', N'a')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV010', N'a')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV011', N'a')
INSERT [dbo].[Tai_Khoan] ([maNhanVien], [matKhau]) VALUES (N'NV012', N'a')
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Chi_Tiet_Hoa_Don_Hoa_Don] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[Hoa_Don] ([maHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] CHECK CONSTRAINT [FK_Chi_Tiet_Hoa_Don_Hoa_Don]
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Chi_Tiet_Hoa_Don_San_Pham] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[San_Pham] ([maSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] CHECK CONSTRAINT [FK_Chi_Tiet_Hoa_Don_San_Pham]
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_Don_Khach_Hang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[Khach_Hang] ([maKhachHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoa_Don] CHECK CONSTRAINT [FK_Hoa_Don_Khach_Hang]
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_Don_Nhan_Vien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[Nhan_Vien] ([maNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
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
