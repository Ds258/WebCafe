USE [master]
GO
/****** Object:  Database [CuaHangBanCafe]    Script Date: 4/8/2023 6:08:07 PM ******/
CREATE DATABASE [CuaHangBanCafe]
 CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'CuaHangBanCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CuaHangBanCafe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'CuaHangBanCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CuaHangBanCafe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
--GO
ALTER DATABASE [CuaHangBanCafe] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CuaHangBanCafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CuaHangBanCafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CuaHangBanCafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHangBanCafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CuaHangBanCafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CuaHangBanCafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CuaHangBanCafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CuaHangBanCafe] SET  MULTI_USER 
GO
ALTER DATABASE [CuaHangBanCafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CuaHangBanCafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CuaHangBanCafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CuaHangBanCafe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CuaHangBanCafe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CuaHangBanCafe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CuaHangBanCafe] SET QUERY_STORE = ON
GO
ALTER DATABASE [CuaHangBanCafe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CuaHangBanCafe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/8/2023 6:08:07 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 4/8/2023 6:08:07 PM ******/
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
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 4/8/2023 6:08:07 PM ******/
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/8/2023 6:08:07 PM ******/
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
	[MaKM] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK__DonHang__27258661634EA785] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/8/2023 6:08:07 PM ******/
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
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 4/8/2023 6:08:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] NOT NULL,
	[LoaiKM] [int] NULL,
	[TenKM] [nchar](30) NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[GiaTri] [int] NULL,
	[ChiTiet] [nchar](100) NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLyShipper]    Script Date: 4/8/2023 6:08:07 PM ******/
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
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 4/8/2023 6:08:07 PM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/8/2023 6:08:07 PM ******/
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
	[MaKM] [int] NULL,
	[MotaSP] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__SanPham__2725081C111B2812] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 4/8/2023 6:08:07 PM ******/
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
/****** Object:  Table [dbo].[TrangThaiDH]    Script Date: 4/8/2023 6:08:07 PM ******/
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
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleAccount] ([RoleID])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDon__MaDH__5BE2A6F2] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDon__MaDH__5BE2A6F2]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDon__MaSP__5CD6CB2B] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDon__MaSP__5CD6CB2B]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaKH__5DCAEF64] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaKH__5DCAEF64]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhuyenMai] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhuyenMai]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_Account_KhachHang] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_Account_KhachHang]
GO
ALTER TABLE [dbo].[QuanLyShipper]  WITH CHECK ADD  CONSTRAINT [FK__QuanLyShip__MaDH__5FB337D6] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[QuanLyShipper] CHECK CONSTRAINT [FK__QuanLyShip__MaDH__5FB337D6]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaDM__60A75C0F] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucSP] ([MaDM])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaDM__60A75C0F]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_KhuyenMai] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_KhuyenMai]
GO
ALTER TABLE [dbo].[TrangThaiDH]  WITH CHECK ADD  CONSTRAINT [FK__TrangThaiD__MaDH__619B8048] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[TrangThaiDH] CHECK CONSTRAINT [FK__TrangThaiD__MaDH__619B8048]
GO
USE [master]
GO
ALTER DATABASE [CuaHangBanCafe] SET  READ_WRITE 
GO
