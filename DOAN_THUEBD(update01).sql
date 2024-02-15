USE [master]
GO
/****** Object:  Database [DOAN_THUEBD]    Script Date: 15/02/2024 16:13:54 ******/
CREATE DATABASE [DOAN_THUEBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DOAN_THUEBD', FILENAME = N'D:\DBMS\DOAN_THUEBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DOAN_THUEBD_log', FILENAME = N'D:\DBMS\DOAN_THUEBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DOAN_THUEBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DOAN_THUEBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DOAN_THUEBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DOAN_THUEBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DOAN_THUEBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DOAN_THUEBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DOAN_THUEBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET RECOVERY FULL 
GO
ALTER DATABASE [DOAN_THUEBD] SET  MULTI_USER 
GO
ALTER DATABASE [DOAN_THUEBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DOAN_THUEBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DOAN_THUEBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DOAN_THUEBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DOAN_THUEBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DOAN_THUEBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DOAN_THUEBD', N'ON'
GO
ALTER DATABASE [DOAN_THUEBD] SET QUERY_STORE = OFF
GO
USE [DOAN_THUEBD]
GO
/****** Object:  Table [dbo].[CT_THUE]    Script Date: 15/02/2024 16:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_THUE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MADIA] [int] NOT NULL,
	[CCCD_KH] [char](12) NOT NULL,
	[CCCD_NV] [char](12) NOT NULL,
	[IDTRA] [int] NULL,
	[SLTHUE] [int] NOT NULL,
	[NGAYTHUE] [date] NOT NULL,
	[NGAYTRA] [date] NOT NULL,
 CONSTRAINT [PK_CT_THUE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIA]    Script Date: 15/02/2024 16:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIA](
	[MADIA] [int] IDENTITY(1,1) NOT NULL,
	[IDQL] [char](12) NOT NULL,
	[TENDIA] [nvarchar](50) NULL,
	[LOAI] [nvarchar](50) NULL,
	[SOLUONG] [int] NOT NULL,
	[GIA] [money] NOT NULL,
 CONSTRAINT [PK_DIA] PRIMARY KEY CLUSTERED 
(
	[MADIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DS_TRA]    Script Date: 15/02/2024 16:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DS_TRA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CCCD_NV] [char](12) NOT NULL,
	[NGAYTRA] [date] NOT NULL,
	[PHUPHI] [money] NOT NULL,
 CONSTRAINT [PK_CT_TRA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 15/02/2024 16:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[CCCD] [char](12) NOT NULL,
	[HOTEN] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](5) NOT NULL,
	[NGAYSINH] [date] NULL,
	[SDT] [char](10) NULL,
	[EMAIL] [varchar](50) NULL,
	[DIACHI] [nvarchar](255) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 15/02/2024 16:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[CCCD] [char](12) NOT NULL,
	[HO] [nvarchar](50) NULL,
	[TEN] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](5) NOT NULL,
	[NGAYSINH] [date] NULL,
	[SDT] [char](10) NULL,
	[EMAIL] [varchar](50) NULL,
	[DIACHI] [nvarchar](255) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLY]    Script Date: 15/02/2024 16:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLY](
	[CCCD] [char](12) NOT NULL,
 CONSTRAINT [PK_CT_CAPNHAT] PRIMARY KEY CLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 15/02/2024 16:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TENDANGNHAP] [char](12) NOT NULL,
	[MATKHAU] [varchar](16) NOT NULL,
	[VAITRO] [int] NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TENDANGNHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KHACHHANG] ([CCCD], [HOTEN], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [DIACHI]) VALUES (N'012345678954', N'Vu Ngọc Thoại', N'Nam', CAST(N'2005-06-30' AS Date), N'0366264050', N'vuthoai@gmail.com', NULL)
GO
INSERT [dbo].[NHANVIEN] ([CCCD], [HO], [TEN], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [DIACHI]) VALUES (N'030604050908', N'Lê', N'Khôi', N'Nam', CAST(N'1999-03-25' AS Date), N'0609080736', N'Leekoi@gmail.com', N'Quảng Ninh')
INSERT [dbo].[NHANVIEN] ([CCCD], [HO], [TEN], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [DIACHI]) VALUES (N'080203060405', N'Nguyễn ', N'Nhật Minh', N'Nam', CAST(N'2003-06-30' AS Date), N'0326034006', N'Minhdan@gmail.com', N'Hà Nội')
GO
INSERT [dbo].[QUANLY] ([CCCD]) VALUES (N'030604050908')
GO
INSERT [dbo].[TAIKHOAN] ([TENDANGNHAP], [MATKHAU], [VAITRO]) VALUES (N'030604050908', N'LeeKoi0306', 0)
INSERT [dbo].[TAIKHOAN] ([TENDANGNHAP], [MATKHAU], [VAITRO]) VALUES (N'080203060405', N'Nminh0802', 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_TENDIA]    Script Date: 15/02/2024 16:13:55 ******/
ALTER TABLE [dbo].[DIA] ADD  CONSTRAINT [UK_TENDIA] UNIQUE NONCLUSTERED 
(
	[TENDIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CT_THUE] ADD  CONSTRAINT [DF_CT_THUE_SLTHUE]  DEFAULT ((0)) FOR [SLTHUE]
GO
ALTER TABLE [dbo].[CT_THUE] ADD  CONSTRAINT [DF_CT_THUE_NGAYTHUE]  DEFAULT (getdate()) FOR [NGAYTHUE]
GO
ALTER TABLE [dbo].[DIA] ADD  CONSTRAINT [DF_DIA_SOLUONG]  DEFAULT ((0)) FOR [SOLUONG]
GO
ALTER TABLE [dbo].[DIA] ADD  CONSTRAINT [DF_DIA_GIA]  DEFAULT ((0)) FOR [GIA]
GO
ALTER TABLE [dbo].[DS_TRA] ADD  CONSTRAINT [DF_CT_TRA_NGAYTRA]  DEFAULT (getdate()) FOR [NGAYTRA]
GO
ALTER TABLE [dbo].[DS_TRA] ADD  CONSTRAINT [DF_CT_TRA_PHUPHI]  DEFAULT ((0)) FOR [PHUPHI]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [DF_KHACHHANG_GIOITINH]  DEFAULT (N'Nam') FOR [GIOITINH]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [DF_NHANVIEN_GIOITINH]  DEFAULT (N'NAM') FOR [GIOITINH]
GO
ALTER TABLE [dbo].[CT_THUE]  WITH CHECK ADD  CONSTRAINT [FK_CT_THUE_DIA] FOREIGN KEY([MADIA])
REFERENCES [dbo].[DIA] ([MADIA])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CT_THUE] CHECK CONSTRAINT [FK_CT_THUE_DIA]
GO
ALTER TABLE [dbo].[CT_THUE]  WITH CHECK ADD  CONSTRAINT [FK_CT_THUE_DS_TRA] FOREIGN KEY([IDTRA])
REFERENCES [dbo].[DS_TRA] ([ID])
GO
ALTER TABLE [dbo].[CT_THUE] CHECK CONSTRAINT [FK_CT_THUE_DS_TRA]
GO
ALTER TABLE [dbo].[CT_THUE]  WITH CHECK ADD  CONSTRAINT [FK_CT_THUE_KHACHHANG] FOREIGN KEY([CCCD_KH])
REFERENCES [dbo].[KHACHHANG] ([CCCD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CT_THUE] CHECK CONSTRAINT [FK_CT_THUE_KHACHHANG]
GO
ALTER TABLE [dbo].[CT_THUE]  WITH CHECK ADD  CONSTRAINT [FK_CT_THUE_NHANVIEN] FOREIGN KEY([CCCD_NV])
REFERENCES [dbo].[NHANVIEN] ([CCCD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CT_THUE] CHECK CONSTRAINT [FK_CT_THUE_NHANVIEN]
GO
ALTER TABLE [dbo].[DIA]  WITH CHECK ADD  CONSTRAINT [FK_DIA_QUANLY] FOREIGN KEY([IDQL])
REFERENCES [dbo].[QUANLY] ([CCCD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DIA] CHECK CONSTRAINT [FK_DIA_QUANLY]
GO
ALTER TABLE [dbo].[DS_TRA]  WITH CHECK ADD  CONSTRAINT [FK_CT_TRA_NHANVIEN] FOREIGN KEY([CCCD_NV])
REFERENCES [dbo].[NHANVIEN] ([CCCD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DS_TRA] CHECK CONSTRAINT [FK_CT_TRA_NHANVIEN]
GO
ALTER TABLE [dbo].[QUANLY]  WITH CHECK ADD  CONSTRAINT [FK_QUANLY_NHANVIEN] FOREIGN KEY([CCCD])
REFERENCES [dbo].[NHANVIEN] ([CCCD])
GO
ALTER TABLE [dbo].[QUANLY] CHECK CONSTRAINT [FK_QUANLY_NHANVIEN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_NHANVIEN] FOREIGN KEY([TENDANGNHAP])
REFERENCES [dbo].[NHANVIEN] ([CCCD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_NHANVIEN]
GO
ALTER TABLE [dbo].[CT_THUE]  WITH CHECK ADD  CONSTRAINT [CK_CT_THUE_NGAYTRA] CHECK  (([NGAYTRA]>[NGAYTHUE]))
GO
ALTER TABLE [dbo].[CT_THUE] CHECK CONSTRAINT [CK_CT_THUE_NGAYTRA]
GO
ALTER TABLE [dbo].[DIA]  WITH CHECK ADD  CONSTRAINT [CK_DIA_GIA] CHECK  (([GIA]>=(0)))
GO
ALTER TABLE [dbo].[DIA] CHECK CONSTRAINT [CK_DIA_GIA]
GO
ALTER TABLE [dbo].[DIA]  WITH CHECK ADD  CONSTRAINT [CK_DIA_SOLUONG] CHECK  (([SOLUONG]>=(0)))
GO
ALTER TABLE [dbo].[DIA] CHECK CONSTRAINT [CK_DIA_SOLUONG]
GO
ALTER TABLE [dbo].[DS_TRA]  WITH CHECK ADD  CONSTRAINT [CK_CT_TRA_PHUPHI] CHECK  (([PHUPHI]=(10000) OR [PHUPHI]=(0)))
GO
ALTER TABLE [dbo].[DS_TRA] CHECK CONSTRAINT [CK_CT_TRA_PHUPHI]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [CK_KHACHHANG_EMAIL] CHECK  (([EMAIL] like '%@gmail.com'))
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [CK_KHACHHANG_EMAIL]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [CK_KHACHHANG_NGAYSINH] CHECK  (([NGAYSINH]<=getdate()))
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [CK_KHACHHANG_NGAYSINH]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [CK_NHANVIEN_EMAIL] CHECK  (([EMAIL] like '%@gmail.com'))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [CK_NHANVIEN_EMAIL]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [CK_NHANVIEN_NGAYSINH] CHECK  (([NGAYSINH]<=getdate()))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [CK_NHANVIEN_NGAYSINH]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [CK_MATKHAU] CHECK  (([MATKHAU] like '%[0-9]%' AND [MATKHAU] like '%[a-zA-Z]%'))
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [CK_MATKHAU]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [CK_TAIKHOAN_VAITRO] CHECK  (([VAITRO]=(1) OR [VAITRO]=(0)))
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [CK_TAIKHOAN_VAITRO]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID Kiểm soát phiếu thuê' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Đĩa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE', @level2type=N'COLUMN',@level2name=N'MADIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn cước công dân khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE', @level2type=N'COLUMN',@level2name=N'CCCD_KH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn cước công dân nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE', @level2type=N'COLUMN',@level2name=N'CCCD_NV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng thuê' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE', @level2type=N'COLUMN',@level2name=N'SLTHUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày thuê' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE', @level2type=N'COLUMN',@level2name=N'NGAYTHUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày trả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE', @level2type=N'COLUMN',@level2name=N'NGAYTRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chi tiết Thuê' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày trả phải lớn hơn ngày thuê' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_THUE', @level2type=N'CONSTRAINT',@level2name=N'CK_CT_THUE_NGAYTRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã đĩa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIA', @level2type=N'COLUMN',@level2name=N'MADIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn cước của Quản lý' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIA', @level2type=N'COLUMN',@level2name=N'IDQL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên Đĩa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIA', @level2type=N'COLUMN',@level2name=N'TENDIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIA', @level2type=N'COLUMN',@level2name=N'LOAI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đĩa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá không được âm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIA', @level2type=N'CONSTRAINT',@level2name=N'CK_DIA_GIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng không được âm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIA', @level2type=N'CONSTRAINT',@level2name=N'CK_DIA_SOLUONG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID phiếu trả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DS_TRA', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn cước công dân nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DS_TRA', @level2type=N'COLUMN',@level2name=N'CCCD_NV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày trả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DS_TRA', @level2type=N'COLUMN',@level2name=N'NGAYTRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phụ phí' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DS_TRA', @level2type=N'COLUMN',@level2name=N'PHUPHI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Danh sách Trả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DS_TRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nhận 1 trong 2 giá trị (0 hoặc 10000vnd)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DS_TRA', @level2type=N'CONSTRAINT',@level2name=N'CK_CT_TRA_PHUPHI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn cước công dân' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'CCCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'HOTEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'GIOITINH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'NGAYSINH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'SDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'COLUMN',@level2name=N'DIACHI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Khách Hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EMAIL phải kết thúc bằng chuỗi @gmail,com' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'CONSTRAINT',@level2name=N'CK_KHACHHANG_EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh của khách hàng không quá ngày nhập dữ liệu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KHACHHANG', @level2type=N'CONSTRAINT',@level2name=N'CK_KHACHHANG_NGAYSINH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn cước công dân' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'CCCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'HO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'TEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'GIOITINH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'NGAYSINH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'SDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'COLUMN',@level2name=N'DIACHI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nhân Viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email phải kết thúc bằng @gmail.com' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'CONSTRAINT',@level2name=N'CK_NHANVIEN_EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh nhân viên không quá ngày nhập ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NHANVIEN', @level2type=N'CONSTRAINT',@level2name=N'CK_NHANVIEN_NGAYSINH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn cước của nhân viên Quản lý' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QUANLY', @level2type=N'COLUMN',@level2name=N'CCCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nhân viên Quản lý' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QUANLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TAIKHOAN', @level2type=N'COLUMN',@level2name=N'TENDANGNHAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TAIKHOAN', @level2type=N'COLUMN',@level2name=N'MATKHAU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vai trò' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TAIKHOAN', @level2type=N'COLUMN',@level2name=N'VAITRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tài Khoản' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TAIKHOAN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MATKHAU chứa ít nhất 1 kí tự chữ và số' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TAIKHOAN', @level2type=N'CONSTRAINT',@level2name=N'CK_MATKHAU'
GO
USE [master]
GO
ALTER DATABASE [DOAN_THUEBD] SET  READ_WRITE 
GO
