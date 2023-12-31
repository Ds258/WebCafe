
/****** Object:  Table [dbo].[Account]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [varchar](100) NOT NULL,
	[RoleID] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[Ngaygiao] [int] NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](200) NOT NULL,
	[AnhDM] [nvarchar](max) NULL,
	[MoTaDM] [nvarchar](500) NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayTao] [date] NOT NULL,
	[TrangThaiHuyDon] [bit] NOT NULL,
	[ThanhToan] [bit] NOT NULL,
	[NgayThanhToan] [date] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[TongTien] [int] NULL,
	[MaKM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](200) NOT NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[AvatarKH] [nvarchar](max) NULL,
	[Diachi] [nvarchar](500) NULL,
	[Ngaysinh] [date] NULL,
	[Phone] [int] NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Password] [varchar](26) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[AccountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] NOT NULL,
	[TenKM] [nchar](30) NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[GiaTri] [int] NULL,
	[TinhTrang] [bit] NULL,
	[LoaiKM] [int] NULL,
	[ChiTiet] [nchar](100) NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLyShipper]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLyShipper](
	[MaShipper] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[TenShipper] [nvarchar](100) NOT NULL,
	[NgayLayHang] [date] NOT NULL,
	[Phone] [int] NOT NULL,
	[TenCongty] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaShipper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](12) NOT NULL,
	[Mota] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NULL,
	[TenSP] [nvarchar](200) NOT NULL,
	[AnhSP] [nvarchar](max) NOT NULL,
	[VideoSP] [nvarchar](max) NULL,
	[GiaSP] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[BestSeller] [bit] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[NgaySua] [date] NOT NULL,
	[MotaSP] [nvarchar](max) NOT NULL,
	[MaKM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](200) NOT NULL,
	[AnhTT] [nvarchar](max) NOT NULL,
	[Motangan] [nvarchar](200) NOT NULL,
	[Motadai] [nvarchar](max) NOT NULL,
	[Tacgia] [nvarchar](100) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[LoaiTin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiDH]    Script Date: 24/09/2023 9:18:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDH](
	[MaTTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[TrangThai] [nvarchar](200) NOT NULL,
	[Mota] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (1, N'tranhieu@gmail.com', 1, CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (2, N'PMDuc@gmail.com', 1, CAST(N'2022-05-07' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (3, N'vandung@gmail.com', 2, CAST(N'2022-05-08' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (4, N'congchinh@gmail.com', 2, CAST(N'2022-05-09' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (5, N'manhhung@gmail.com', 3, CAST(N'2022-05-10' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (6, N'dieuquynh@gmail.com', 3, CAST(N'2022-05-11' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (7, N'nguyencongchinh@gmail.com', 3, CAST(N'2022-05-10' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (8, N'nguyenvandung@gmail.com', 3, CAST(N'2022-05-11' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (9, N'trantrunghieu@gmail.com', 3, CAST(N'2022-05-10' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (10, N'phungminhduc@gmail.com', 3, CAST(N'2022-05-11' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (11, N'oidoioi@gmail.com', 3, CAST(N'2023-04-12' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (12, N'mpc123@gmail.com', 3, CAST(N'2023-04-12' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (13, N'aidoioi123@gmail.com', 3, CAST(N'2023-04-12' AS Date))
INSERT [dbo].[Account] ([AccountID], [TaiKhoan], [RoleID], [CreateDate]) VALUES (14, N'ahaha123@gmail.com', 3, CAST(N'2023-04-12' AS Date))
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (10, 1, 1, 30000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (11, 2, 5, 40000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (12, 2, 11, 5000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (13, 3, 4, 40000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (14, 3, 6, 28000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (15, 4, 2, 35000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (16, 5, 1, 30000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (17, 5, 4, 15000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (18, 6, 9, 50000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (19, 7, 3, 25000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (20, 7, 12, 50000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (21, 8, 2, 35000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (22, 8, 3, 25000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (23, 8, 12, 50000, 0, 1)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [TongTien], [Ngaygiao], [SoLuong]) VALUES (24, 9, 1, 30000, 0, 1)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (1, N'Cafe', N'icon_cafe.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (2, N'Bánh', N'icon_cake.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (3, N'Kẹo', N'icon_cookie.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (4, N'Nước giải khát', N'icon_drink.png', NULL, 1)
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM], [AnhDM], [MoTaDM], [TrangThai]) VALUES (5, N'Kem', N'icon_ice_cream.png', NULL, 1)
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (1, 3, CAST(N'2022-06-07' AS Date), 0, 1, CAST(N'2022-06-07' AS Date), NULL, 30000, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (2, 3, CAST(N'2022-06-07' AS Date), 0, 1, CAST(N'2022-06-07' AS Date), NULL, 45000, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (3, 3, CAST(N'2022-06-07' AS Date), 0, 1, CAST(N'2022-06-07' AS Date), NULL, 68000, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (4, 6, CAST(N'2022-06-08' AS Date), 0, 1, CAST(N'2022-06-08' AS Date), NULL, 35000, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (5, 6, CAST(N'2022-06-08' AS Date), 0, 1, CAST(N'2022-06-08' AS Date), NULL, 45000, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (6, 6, CAST(N'2022-06-08' AS Date), 0, 1, CAST(N'2022-06-08' AS Date), NULL, 50000, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (7, 2, CAST(N'2023-04-12' AS Date), 1, 1, CAST(N'2023-04-12' AS Date), NULL, 70000, 1)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (8, 1, CAST(N'2023-04-12' AS Date), 1, 1, CAST(N'2023-04-12' AS Date), NULL, 110000, NULL)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayTao], [TrangThaiHuyDon], [ThanhToan], [NgayThanhToan], [Note], [TongTien], [MaKM]) VALUES (9, 1, CAST(N'2023-04-12' AS Date), 1, 1, CAST(N'2023-04-12' AS Date), NULL, 25000, 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (1, N'Trần Hiếu ', N'Nam', N'332588135_1401964917212248_6129903015855466845_n.jpg', N'Hà Nội', CAST(N'2002-05-04' AS Date), 912345678, N'tranhieu@gmail.com', N'123456', CAST(N'0001-01-01' AS Date), 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (2, N'Phùng Minh Đức ', N'Nam', NULL, N'Hà Nội', CAST(N'2002-01-01' AS Date), 368428003, N'phungminhduc@gmail.com', N'654321', CAST(N'0001-01-01' AS Date), 10)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (3, N'Nguyễn Chông Chính', N'Nam', NULL, N'Hà Nội', CAST(N'2002-01-01' AS Date), 89898989, N'nguyencongchinh@gmail.com', N'123456', CAST(N'2022-05-10' AS Date), 7)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (4, N'Nguyễn Văn Dũng ', N'Nam', NULL, N'Hà Nội', CAST(N'2002-05-09' AS Date), 56723489, N'nguyenvandung@gmail.com', N'123456', CAST(N'2022-05-11' AS Date), 8)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (5, N'Nguyễn Mạnh Hùng ', N'Nam', NULL, N'Ninh Bình', CAST(N'2002-05-10' AS Date), 11111111, N'manhhung@gmail.com', N'123456', CAST(N'2022-05-10' AS Date), 5)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (6, N'Trần Diệu Quỳnh', N'Nữ', NULL, N'Thanh Hóa', CAST(N'2002-05-11' AS Date), 368428002, N'dieuquynh@gmail.com', N'123456', CAST(N'2022-05-11' AS Date), 6)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (7, N'Oidoioi', N'Nam', N'avatarKH.jpg', N'Hà Nội', CAST(N'2023-04-01' AS Date), 924314144, N'oidoioi@gmail.com', N'oidoioi123', CAST(N'2023-04-12' AS Date), 11)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (8, N'Mpc', N'Nữ', N'332588135_1401964917212248_6129903015855466845_n.jpg', N'Quảng Bình', CAST(N'2023-04-01' AS Date), 912345678, N'mpc123@gmail.com', N'654321', CAST(N'0001-01-01' AS Date), 12)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (9, N'AIdoioi', N'Nam', N'avatarKH.jpg', N'Hà Nội', CAST(N'2023-04-01' AS Date), 987654321, N'aidoioi123@gmail.com', N'123456', CAST(N'2023-04-12' AS Date), 13)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [AvatarKH], [Diachi], [Ngaysinh], [Phone], [Email], [Password], [CreateDate], [AccountID]) VALUES (10, N'Ahaha', N'Nữ', NULL, N'Hà Nội', CAST(N'2023-04-01' AS Date), 986754321, N'ahaha123@gmail.com', N'ahaha123123', CAST(N'2023-04-12' AS Date), 14)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [NgayBD], [NgayKT], [GiaTri], [TinhTrang], [LoaiKM], [ChiTiet]) VALUES (1, N'LALALA                        ', CAST(N'2020-03-03' AS Date), CAST(N'2023-08-08' AS Date), 5000, 1, 2, N'vuive                                                                                               ')
GO
SET IDENTITY_INSERT [dbo].[QuanLyShipper] ON 

INSERT [dbo].[QuanLyShipper] ([MaShipper], [MaDH], [TenShipper], [NgayLayHang], [Phone], [TenCongty]) VALUES (1, 1, N'Nguyễn Văn Đức', CAST(N'2022-06-07' AS Date), 12345678, N'GHTK')
INSERT [dbo].[QuanLyShipper] ([MaShipper], [MaDH], [TenShipper], [NgayLayHang], [Phone], [TenCongty]) VALUES (2, 2, N'Nguyễn Văn Đức', CAST(N'2022-06-07' AS Date), 12345678, N'GHTK')
INSERT [dbo].[QuanLyShipper] ([MaShipper], [MaDH], [TenShipper], [NgayLayHang], [Phone], [TenCongty]) VALUES (3, 3, N'Nguyễn Văn Đức', CAST(N'2022-06-07' AS Date), 12345678, N'GHTK')
INSERT [dbo].[QuanLyShipper] ([MaShipper], [MaDH], [TenShipper], [NgayLayHang], [Phone], [TenCongty]) VALUES (4, 4, N'Nguyễn Văn Dũng', CAST(N'2022-06-08' AS Date), 12345678, N'GHN')
INSERT [dbo].[QuanLyShipper] ([MaShipper], [MaDH], [TenShipper], [NgayLayHang], [Phone], [TenCongty]) VALUES (5, 5, N'Nguyễn Văn Dũng', CAST(N'2022-06-08' AS Date), 12345678, N'GHN')
INSERT [dbo].[QuanLyShipper] ([MaShipper], [MaDH], [TenShipper], [NgayLayHang], [Phone], [TenCongty]) VALUES (6, 6, N'Nguyễn Văn Dũng', CAST(N'2022-06-08' AS Date), 12345678, N'GHN')
SET IDENTITY_INSERT [dbo].[QuanLyShipper] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleAccount] ON 

INSERT [dbo].[RoleAccount] ([RoleID], [RoleName], [Mota]) VALUES (1, N'Admin', N'Quản Lý')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName], [Mota]) VALUES (2, N'User', N'Nhân Viên')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName], [Mota]) VALUES (3, N'Guest', N'Người dùng')
SET IDENTITY_INSERT [dbo].[RoleAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (1, 1, N'Cafe Truyền Thống', N'menu-quan-cafe-10.jpg', NULL, 30000, 1, 37, 1, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Hoàn toàn làm từ Cafe nguyên chất của núi rừng Tây Nguyên', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (2, 1, N'Cafe Latte', N'cach-pha-che-cafe-latte.jpg', NULL, 35000, 1, 47, 1, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Latte là sự hòa trộn của Espresso và sữa nóng, với tỷ lệ sữa gấp đôi Espresso, cộng thêm một lớp bọt sữa mỏng.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (3, 1, N'Cappuccino', N'cappuccino.jpg', NULL, 25000, 1, 26, 1, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Capuchino là một loại cà phê gồm có cà phê và lớp bọt sữa ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (4, 1, N'Cafe Mocha', N'cafe-mocha-nong.jpg', NULL, 40000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Mocha về cơ bản chính là cafe Latte – vẫn được pha chế từ 1 phần Espresso và 2 phần sữa nóng, nhưng được thêm vào một lớp syrup chocolate.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (5, 1, N'Espresso', N'espresso-4992122_960_720.jpg', NULL, 40000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Espresso là phương pháp pha chế cà phê sử dụng một lượng nhỏ nước đun sôi được ép qua cà phê nghiền mịn dưới áp lực lớn.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (6, 1, N'Americano', N'Thanh-phan-ly-cafe-Americano.jpg', NULL, 28000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Cafe Americano có nguồn gốc từ nước Ý được các lính Mỹ biến tấu để dễ uống hơn.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (7, 4, N'Coca', N'anh3.jpg', NULL, 15000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Thức uống giải khát có ga', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (8, 4, N'Pepsi', N'nuoc-giai-khat-pepsi-lon-cao-320ml-20221212.jpg', NULL, 15000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Thức uống giải khát có ga', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (9, 2, N'Bánh Oreo', N'oreo-1.webp', NULL, 50000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Bánh bao gồm 2 lớp bánh socolo kẹp kem ngọt ở giữa', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (10, 2, N'Bánh Cosy', N'4384ab2e84384610a68f59166a3dcddf.jpg', NULL, 50000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'<ón ăn nhẹ giúp bổ sung vi chất dinh dưỡng', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (11, 3, N'Singum Cool Air', N'keo-cao-su-ca-menthol-eucalyptus-vi-4-1.jpg', NULL, 5000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Mát lạnh bạc hà', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (12, 1, N'Cafe Ngoại Nhập', N'cafengoainhap.jpg', NULL, 50000, 1, 48, 1, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Hoàn toàn làm từ Cafe ngoại nhập', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (13, 1, N'Cafe Đen Nóng', N'cafedennong.jpg', NULL, 20000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Hoàn toàn làm từ Cafe đen', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (14, 1, N'Cafe Đen Lạnh', N'cafedenlanh.jpg', NULL, 20000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Hoàn toàn làm từ Cafe đen', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (15, 1, N'Cafe Sữa Nóng', N'cafe-sua-nong.jpg', NULL, 25000, 1, 50, 1, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Đậm vị Cafe thơm ngon vị sữa', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (16, 1, N'Cafe Sữa Lạnh', N'Ca-phe-sua-da.jpg', NULL, 25000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Đậm vị Cafe thơm ngon vị sữa', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (17, 1, N'Cafe Đã Xay Pha Kem', N'cafe-da-xay-1.jpg', NULL, 30000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Coffee and Cream', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (18, 1, N'Cafe Xay Chocolate', N'cafe-chocolate-da-xay.jpg', NULL, 35000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Coffee and Chocolate', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (19, 1, N'Cafe Xay Hương Chuối', N'chuoi_4.jpg', NULL, 35000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Coffee with Banana Flavor', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (20, 1, N'Bạc Xỉu', N'bac-xiu-la-gi.jpg', NULL, 40000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Món sữa nóng thêm chút cafe', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (21, 2, N'Bánh Macaron ', N'macarons.jpg', NULL, 30000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Bánh Macaron được tạo từ hai miếng bánh tròn kẹp lại, vỏ bánh hơi nhám, phần đế phẳng', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (22, 2, N'Bánh Táo', N'banhtao.jpg', NULL, 30000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Bánh Táo thường có dạng lưới kết hợp với nhiều loại táo khác nhau, thường là táo tây', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (23, 2, N'Bánh Donut', N'banh-donut.jpg', NULL, 35000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Bánh Donut hay còn được biết tới là “bánh rán Mỹ" là một món bánh vừa lạ vừa quen.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (24, 2, N'Bánh Tiramisu', N'tiramisu.jpg', NULL, 35000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Bánh có độ mềm, xốp nhất định với hương vị đặc trưng của cà phê, rượu rum', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (25, 2, N'Bánh Mochi', N'mochi.jpg', NULL, 38000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Một trong các loại bánh nổi tiếng ở Nhật Bản mà bạn không thể quên thưởng thức khi tới đây là bánh Mochi', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (26, 2, N'Bánh Black Forest', N'BlackForest.jpg', NULL, 40000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Một trong các loại bánh ngọt “sang chảnh” thường được phục vụ làm món tráng miệng cho những bữa tối có rượu ấm thơm nồng', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (27, 2, N'Bánh Limburg Pie ', N'Limburg-Pie.jpg', NULL, 45000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Giờ bạn hãy ghé đến miền Nam Hà Lan để thưởng thức món bánh Limburg Pie với phần nhân bánh là trái cây thanh mát', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (28, 2, N'Bánh Pavlova', N'banh-pavlova.jpg', NULL, 38000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Đây là loại bánh tráng miệng phổ biến ở Úc và đã ghi đậm dấu ấn ở nền ẩm thực nơi đây', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (29, 2, N'Bánh Cheesecake ', N'Cheesecake.jpg', NULL, 35000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Bánh có cấu tạo dạng đặc, mềm mịn với hương vị của đậm đà, ngọt ngào', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (30, 2, N'Bánh Gateau', N'Gateau.jpg', NULL, 45000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Bánh có hình tròn, dạng giống bánh su kem nhưng được nhúng qua chocolate, phủ đầy lớp kem tươi và caramen', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (31, 2, N'Bánh tart', N'banh_tart.jpg', NULL, 20000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Những chiếc bánh tart thơm ngon, hấp dẫn ngoài hàng chắc chắn rất thu hút bạn phải không nào?', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (32, 2, N'Bánh su kem', N'banh-su-kem.jpg', NULL, 20000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Chỉ với vài phút cùng chiếc lò nướng gia đình là món bánh su kem đã sẵn sàng để bạn thưởng thức rồi đấy!', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (33, 2, N'Bánh bông lan', N'banh-bông-lan.jpg', NULL, 40000, 1, 40, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Bánh bông lan thơm ngất ngây với cốt bánh bông mềm, tan ngay trong miệng. Vị bánh thì beo béo, ngọt vừa phải càng ăn càng mê.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (34, 3, N'Kẹo sầu riêng ', N'keosaurieng.jpg', NULL, 5000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Nếu bạn là một người yêu thích hương thơm béo ngậy của sầu riêng thì có thể thử thưởng thức loại kẹo này ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (35, 3, N'Kẹo râu rồng', N'keoraurong.jpg ', NULL, 6000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Thuở xưa, loại kẹo này vốn chỉ được phục vụ cho vua chúa trong triều đình.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (36, 3, N'Kẹo Mozartkugel', N'Mozartkugel.jpg', NULL, 7000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Kẹo Mozartkugel là những viên socola bọc trong giấy gói in hình Mozart', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (37, 3, N'Kẹo Jaffas', N'Jaffas.jpg', NULL, 8000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Đây cũng là một loại kẹo có hình dáng giống viên bi, nhưng đằng sau lớp tươi tắn có vị cam thì bên trong kẹo Jaffas là lớp socola béo ngậy', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (38, 3, N'Kẹo Daim', N'Daim.jpg', NULL, 9000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Kẹo Daim xuất hiện tại Thụy Điển vào những năm 50 của thế kỷ trước và được tạo ra bởi 2 nguyên liệu là bơ hạnh nhân và socola sữa', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (39, 3, N'Kẹo Canes', N'che-bien-keo-gay-candy.jpg ', NULL, 5000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Kẹo Canes có hình dáng như những chiếc gậy với các màu sắc xanh, đỏ và trắng, thường được bày bán trong dịp Giáng sinh hàng năm tại Mỹ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (40, 3, N'Kẹo gạo', N'keo-gao.jpg', NULL, 6000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' là loại kẹo dẻo với đặc tính là dẻo, có vị cam hoặc chanh và được bao phủ bên ngoài bởi một lớp bánh tráng mỏng', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (41, 3, N'Bon Bon Bum', N'bonbonbum.jpg', NULL, 7000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Đây là loại kẹo được sản xuất bởi công ty kẹo nổi tiếng nhất tại đất nước Colombia', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (42, 3, N'De La Rosa Mazapan ', N'De-La-Rosa-Mazapan .jpg', NULL, 8000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Loại kẹo này có thể được xem như là một phiên bản khác của bánh hạnh nhân nổi tiếng ở Mexico.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (43, 3, N'Katzenzungen', N'Katzenzungen.jpg', NULL, 9000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Tên của loại kẹo này khi dịch ra có nghĩa là lưỡi mèo, sở dĩ nó được đặt cái tên ấy là do hình dạng đặc biệt của mình', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (44, 3, N'Salmiakki', N'salmiakki1.jpg', NULL, 5000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Salmiakki là kẹo có mùi cam thảo và vị mặn độc đáo. Nó được coi là loại kẹo truyền thống ở các quốc gia Bắc Âu, Hà Lan,… ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (45, 3, N'Rakovye Sheiki', N'RakovyeSheiki.jpg', NULL, 6000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Dù được đặt cho một cái tên liên quan đến tôm hùm nhưng loại kẹo này lại không hề có mùi vị của hải sản.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (46, 3, N'Kẹo dừa', N'keo-dua.jpg', NULL, 7000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Kẹo dừa là món đặc sản tại Bến Tre, Việt Nam, đây là loại kẹo được rất nhiều người ưa chuộng bởi hương vị thơm ngon', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (47, 3, N'Kẹo Carambar', N'Carambar.jpg', NULL, 8000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Carambar là loại kẹo dẻo ra đời tại Pháp từ năm 1954', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (48, 4, N'Sữa gạo ', N'sua-gao-1.jpg', NULL, 15000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Sữa gạo là một loại nước uống có nguồn gốc từ Hàn Quốc, với hương vị thơm ngon từ gạo và sữa, món đồ uống này chinh phục được cả những người khó tính nhất', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (49, 4, N'Trà đào cam sả', N'cong-thuc-tra-dao-cam-sa.jpg', NULL, 20000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Trà đào cam sả là loại nước uống giải khát đang được giới trẻ ưa chuộng và yêu thích', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (50, 4, N'Mountain Dew', N'Mountain-Dew.jpg', NULL, 15000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Mountain Dew - một nhãn hiệu của Pepsico - được xuất hiện lần đầu tiên vào năm 1940, nhưng kể từ đó, công thức của loại nước này đã có nhiều phần thay đổi.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (51, 4, N'Sprite ', N'Sprite.jpg', NULL, 15000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Bên cạnh những thương hiệu nước uống giải khát khác, Sprite cũng là một nhãn hiệu có tiếng tăm và được nhiều người tin dùng trong thị trường Việt Nam.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (52, 4, N'Monster Energy ', N'monster-energy.jpg', NULL, 20000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Ngoài Redbull - thương hiệu nước tăng lực nổi tiếng bậc nhất thế giới, Monster Energy cũng là một trong những nhãn hiệu nước vô cùng đình đám của Mỹ. ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (53, 4, N'Fanta', N'Fanta.jpg', NULL, 15000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Fanta là thương hiệu đồ uống có gas hương trái cây khá được ưa chuộng tại Việt Nam được sản xuất bởi công ty Coca Cola', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (54, 4, N'Mirinda ', N'mirinda.jpg', NULL, 15000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Mirinda là một thương hiệu nước giải khát được ra mắt lần đầu tại Tây Ban Nha vào năm 1959 và hiện nay, nó thuộc quyền sở hữu của PepsiCo', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (55, 4, N'Twister', N'Twister.jpg', NULL, 15000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Tuy Twister không phải nước có gas nhưng lại có khả năng giải nhiệt mùa hè rất tốt', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (56, 4, N'Trà sữa', N'ly-tra-sua.jpg', NULL, 20000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Một trong những loại nước uống giải khát mùa hè được giới trẻ yêu thích nhất phải kể đến trà sữa', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (57, 4, N'Nước ép trái cây', N'nuoc-ep.jpg', NULL, 25000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Nước ép trái cây là loại nước uống giải khát mùa hè thơm ngon, bổ dưỡng, cung cấp nhiều dưỡng chất có lợi cho cơ thể, đồng thời giúp cấp nước, giải nhiệt vào những ngày nắng nóng.', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (58, 4, N'Sinh tố', N'chup-anh-sinh-to.jpg', NULL, 25000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Sinh tố là loại thức uống được chế biến bằng cách xay nhuyễn các loại trái cây tươi với đường, sữa đặc hoặc hoặc đá vụn để tạo nên một hỗn hợp có độ đặc nhất định', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (59, 4, N'Đá xay', N'MATCHA-DA-XAY.jpg', NULL, 35000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Món nước uống giải khát mùa hè này chính là sự kết hợp tuyệt vời giữa vị béo ngậy của sữa bột và cảm giác mát từ đá xay', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (60, 4, N'Redbull ', N'Redbull .jpg', NULL, 15000, 1, 30, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N' Redbull, hay còn được người Việt Nam chúng ta gọi với cái tên thân thương - Bò húc', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (61, 5, N'Kem cốm', N'kemcom.jpg', NULL, 15000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Đầu tiên không thể không nhắc tới kem cốm, loại kem được làm với một nguyên liệu đặc biệt trong đó chính là cốm', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (62, 5, N'Kem ốc quế Tràng Tiền', N'kemocquetrangtien.jpg', NULL, 25000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Vẫn là kem Tràng Tiền nhưng ngoài kem cốm, kem Tràng Tiền còn được biết đến với món kem ốc quế vừa ngon vừa rẻ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (63, 5, N'Kem bạc hà chanh Thủy Tạ', N'kemthuyta.jpg', NULL, 20000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Một thương hiệu kem ngon của Việt Nam phải nhắc đến chính là kem Thủy Tạ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (64, 5, N'Kem miếng dừa', N'kemmiengdua.jpg', NULL, 30000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem quả dừa không phải món quá mới mà thực tế nhiều nơi đã bán từ lâu vì đơn giản là món kem này chỉ là kem dừa', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (65, 5, N'Kem quả dừa', N'kemquadua.jpg', NULL, 35000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem quả dừa không phải món quá mới mà thực tế nhiều nơi đã bán từ lâu vì đơn giản là món kem này chỉ là kem dừa', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (66, 5, N'Kem xôi', N'kemxoi.jpg', NULL, 35000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Không biết kem xôi có nguồn gốc chính xác ở đâu nhưng từ lâu món kem xôi đã là một phần trong ký ức của người Hà Nội', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (67, 5, N'Kem ống', N'kemong.jpg', NULL, 5000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem ống quen thuộc với mọi người ở miền Trung, miền Nam nhiều hơn', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (68, 5, N'Kem túi', N'kemtui.jpg', NULL, 5000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem túi ắt hẳn là món kem tuổi thơ của nhiều người', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (69, 5, N'Kem ký', N'kemky.jpg', NULL, 15000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem ký có tên như vậy chắc bởi được bán theo ký (cân)', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (70, 5, N'Kem nhãn', N'kemnhan.jpg', NULL, 30000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Nhãn là thứ quả của vùng nhiệt đới, cũng chính vì vậy mà người Việt Nam đã sáng tạo ra món kem nhãn', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (71, 5, N'Kem Celano', N'celano.jpg', NULL, 50000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem Celano là sản phẩm quen thuộc với thực khách Việt Nam yêu thích món kem, đặc biệt là các bạn nhỏ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (72, 5, N'Kem Merino', N'merino.jpg', NULL, 60000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Merino là thương hiệu kem, sữa chua, nước ngọt, thực phẩm đông lạnh đa quốc gia của Châu Âu với lịch sử hình thành phát triển rất lâu đời', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (73, 5, N'Kem Vinamilk', N'vinamilk.jpg', NULL, 55000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem Vinamilk là sản phẩm cực kỳ quen thuộc đối với khách hàng tại Việt Nam với các loại kem cao cấp, thiết kế ấn tượng và bảo quản dễ dàng', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (74, 5, N'Kem Monterosa', N'monterasa.jpg', NULL, 70000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem Monterosa có thành phần chiết xuất từ trái cây tươi, ít đường, chất béo cân đối và hương vị đặc trưng của Ý', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (75, 5, N'Kem Nestlé', N'nestle.jpg', NULL, 65000, 1, 50, 0, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-08' AS Date), N'Kem Nestlé được sản xuất theo dây chuyền công nghệ hiện đại và tiên tiến với những thành phần được lựa chọn nghiêm ngặt', NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [AnhSP], [VideoSP], [GiaSP], [TrangThai], [SoLuong], [BestSeller], [CreateDate], [NgaySua], [MotaSP], [MaKM]) VALUES (76, 1, N'Cafe bạc xỉu', N'Cheems.png', NULL, 40000, 1, 15, 0, CAST(N'2023-04-12' AS Date), CAST(N'2023-04-12' AS Date), N'Bạc siuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTT], [TenTT], [AnhTT], [Motangan], [Motadai], [Tacgia], [CreateDate], [LoaiTin]) VALUES (1, N'Quán cà phê tìm cách đuổi khách ngồi dai', N'tin1.jpg', N'', N'Mấy ngày gần đây, các diễn
đàn mạng xã hội Hàn Quốc đang dậy sóng vì một bài đăng chia sẻ cách đuổi khéo khách ngồi dai tại quán cà phê. Một số mẹo phổ 
biến nhất gồm tắt Wi-Fi và giả vờ như không biết; quy định phải gọi món mới sau mỗi hai tiếng; dán thông báo không sử dụng
laptop hay thậm chí là bịt ổ cắm điện.', N'VNEpress', CAST(N'2023-01-01' AS Date), 0)
INSERT [dbo].[TinTuc] ([MaTT], [TenTT], [AnhTT], [Motangan], [Motadai], [Tacgia], [CreateDate], [LoaiTin]) VALUES (2, N'Người bệnh thận có nên uống cafe? ', N'tin2.jpg', N'', N'Cafe chứa nhiều hợp chất có lợi cho sức khỏe, bao gồm caffeine, diterpenes và axit chlorogenic. Các nghiên cứu cho thấy thói quen
		uống cafe có thể giúp ngăn ngừa các bệnh mạn tính và thoái hóa, bao gồm ung thư, rối loạn tim mạch, tiểu đường và bệnh Parkinson.', N'VNEpress', CAST(N'2023-01-01' AS Date), 0)
INSERT [dbo].[TinTuc] ([MaTT], [TenTT], [AnhTT], [Motangan], [Motadai], [Tacgia], [CreateDate], [LoaiTin]) VALUES (3, N'Vì sao không nên đổ bã cà phê vào bồn rửa?', N'tin3.jpg', N'', N'Theo các chuyên gia của tờ The Spruce, bã cà phê 
		là một trong những thủ phạm tồi tệ nhất khiến cống bị tắc. Loại rác này có thể gây ra những hậu quả tương tự như dầu mỡ, 
		dầu ăn khi đổ xuống cống thoát nước vì các chất này tích tụ theo thời gian và tạo ra lớp cặn dày, ngăn cản dòng chảy.', N'VNEpress', CAST(N'2023-01-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangThaiDH] ON 

INSERT [dbo].[TrangThaiDH] ([MaTTDH], [MaDH], [TrangThai], [Mota]) VALUES (1, 1, N'Đang giao', N'')
SET IDENTITY_INSERT [dbo].[TrangThaiDH] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleAccount] ([RoleID])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaKhuye__5CD6CB2B] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaKhuye__5CD6CB2B]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_Account_KhachHang] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_Account_KhachHang]
GO
ALTER TABLE [dbo].[QuanLyShipper]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucSP] ([MaDM])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham]
GO
ALTER TABLE [dbo].[TrangThaiDH]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO

