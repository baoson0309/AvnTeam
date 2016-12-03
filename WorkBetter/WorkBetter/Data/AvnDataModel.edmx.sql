
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/03/2016 10:50:32
-- Generated from EDMX file: C:\Users\Admin\Source\Repos\AvnTeam\WorkBetter\WorkBetter\Data\AvnDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [AVN_TEAMWORK];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ChiPhiDuAnDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiPhiDuAns] DROP CONSTRAINT [FK_ChiPhiDuAnDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_ChiPhiDuAnNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiPhiDuAns] DROP CONSTRAINT [FK_ChiPhiDuAnNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_DanhMucHopDongNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DanhMucHopDongs] DROP CONSTRAINT [FK_DanhMucHopDongNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_DuAnDanhMucDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DuAns] DROP CONSTRAINT [FK_DuAnDanhMucDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_DuAnNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DuAns] DROP CONSTRAINT [FK_DuAnNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_HoaDonNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HoaDons] DROP CONSTRAINT [FK_HoaDonNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_HopDong_KhachHang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HopDongs] DROP CONSTRAINT [FK_HopDong_KhachHang];
GO
IF OBJECT_ID(N'[dbo].[FK_HopDongDanhMucHopDong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HopDongs] DROP CONSTRAINT [FK_HopDongDanhMucHopDong];
GO
IF OBJECT_ID(N'[dbo].[FK_HopDongDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DuAns] DROP CONSTRAINT [FK_HopDongDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_HopDongThanhLyHopDong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ThanhLyHopDongs] DROP CONSTRAINT [FK_HopDongThanhLyHopDong];
GO
IF OBJECT_ID(N'[dbo].[FK_KhachHangNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KhachHangs] DROP CONSTRAINT [FK_KhachHangNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_LienHeKhachHangKhachHang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LienHeKhachHangs] DROP CONSTRAINT [FK_LienHeKhachHangKhachHang];
GO
IF OBJECT_ID(N'[dbo].[FK_LienHeKhachHangNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LienHeKhachHangs] DROP CONSTRAINT [FK_LienHeKhachHangNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_LienKetLienKetList]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LienKets] DROP CONSTRAINT [FK_LienKetLienKetList];
GO
IF OBJECT_ID(N'[dbo].[FK_LienKetListDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LienKetLists] DROP CONSTRAINT [FK_LienKetListDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_LienKetListNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LienKetLists] DROP CONSTRAINT [FK_LienKetListNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_LienKetNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LienKets] DROP CONSTRAINT [FK_LienKetNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_MocThoiGian_NguoiChiuTrachNhiem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MocThoiGians] DROP CONSTRAINT [FK_MocThoiGian_NguoiChiuTrachNhiem];
GO
IF OBJECT_ID(N'[dbo].[FK_MocThoiGian_NhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MocThoiGians] DROP CONSTRAINT [FK_MocThoiGian_NhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_MocThoiGianDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MocThoiGians] DROP CONSTRAINT [FK_MocThoiGianDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_NguoiKyHopDong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HopDongs] DROP CONSTRAINT [FK_NguoiKyHopDong];
GO
IF OBJECT_ID(N'[dbo].[FK_NhanXetNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NhanXets] DROP CONSTRAINT [FK_NhanXetNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_NhomKhachHang_KhachHang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KhachHangs] DROP CONSTRAINT [FK_NhomKhachHang_KhachHang];
GO
IF OBJECT_ID(N'[dbo].[FK_NhomKhachHangNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NhomKhachHangs] DROP CONSTRAINT [FK_NhomKhachHangNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_PhuLucHopDong_HopDong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhuLucHopDongs] DROP CONSTRAINT [FK_PhuLucHopDong_HopDong];
GO
IF OBJECT_ID(N'[dbo].[FK_PhuLucHopDong_NhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhuLucHopDongs] DROP CONSTRAINT [FK_PhuLucHopDong_NhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_ReminderDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reminders] DROP CONSTRAINT [FK_ReminderDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_ReminderNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reminders] DROP CONSTRAINT [FK_ReminderNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_RuiRoDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RuiRoes] DROP CONSTRAINT [FK_RuiRoDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_RuiRoNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RuiRoes] DROP CONSTRAINT [FK_RuiRoNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_SoGhiChepListNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SoGhiChepLists] DROP CONSTRAINT [FK_SoGhiChepListNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_SoGhiChepNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SoGhiCheps] DROP CONSTRAINT [FK_SoGhiChepNhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_SoGhiChepSoGhiChepList]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SoGhiCheps] DROP CONSTRAINT [FK_SoGhiChepSoGhiChepList];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_NhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks] DROP CONSTRAINT [FK_Task_NhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_TaskList]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks] DROP CONSTRAINT [FK_Task_TaskList];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskList_DuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskLists] DROP CONSTRAINT [FK_TaskList_DuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskList_NhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskLists] DROP CONSTRAINT [FK_TaskList_NhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_ThanhLyHopDong_NhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ThanhLyHopDongs] DROP CONSTRAINT [FK_ThanhLyHopDong_NhanVien];
GO
IF OBJECT_ID(N'[dbo].[FK_ThanhToanDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HoaDons] DROP CONSTRAINT [FK_ThanhToanDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_ThanhToanHoaDonDuAn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ThanhToanHoaDons] DROP CONSTRAINT [FK_ThanhToanHoaDonDuAn];
GO
IF OBJECT_ID(N'[dbo].[FK_ThanhToanHoaDonHoaDon]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ThanhToanHoaDons] DROP CONSTRAINT [FK_ThanhToanHoaDonHoaDon];
GO
IF OBJECT_ID(N'[dbo].[FK_ThanhToanHoaDonNhanVien]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ThanhToanHoaDons] DROP CONSTRAINT [FK_ThanhToanHoaDonNhanVien];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ChiPhiDuAns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChiPhiDuAns];
GO
IF OBJECT_ID(N'[dbo].[DanhMucDuAns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DanhMucDuAns];
GO
IF OBJECT_ID(N'[dbo].[DanhMucHopDongs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DanhMucHopDongs];
GO
IF OBJECT_ID(N'[dbo].[DuAns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DuAns];
GO
IF OBJECT_ID(N'[dbo].[HoaDons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HoaDons];
GO
IF OBJECT_ID(N'[dbo].[HopDongs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HopDongs];
GO
IF OBJECT_ID(N'[dbo].[KhachHangs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KhachHangs];
GO
IF OBJECT_ID(N'[dbo].[LienHeKhachHangs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LienHeKhachHangs];
GO
IF OBJECT_ID(N'[dbo].[LienKetLists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LienKetLists];
GO
IF OBJECT_ID(N'[dbo].[LienKets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LienKets];
GO
IF OBJECT_ID(N'[dbo].[MocThoiGians]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MocThoiGians];
GO
IF OBJECT_ID(N'[dbo].[NhanViens]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NhanViens];
GO
IF OBJECT_ID(N'[dbo].[NhanXets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NhanXets];
GO
IF OBJECT_ID(N'[dbo].[NhomKhachHangs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NhomKhachHangs];
GO
IF OBJECT_ID(N'[dbo].[PhuLucHopDongs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhuLucHopDongs];
GO
IF OBJECT_ID(N'[dbo].[Reminders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reminders];
GO
IF OBJECT_ID(N'[dbo].[RuiRoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RuiRoes];
GO
IF OBJECT_ID(N'[dbo].[SoGhiChepLists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SoGhiChepLists];
GO
IF OBJECT_ID(N'[dbo].[SoGhiCheps]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SoGhiCheps];
GO
IF OBJECT_ID(N'[dbo].[TaskLists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaskLists];
GO
IF OBJECT_ID(N'[dbo].[Tasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks];
GO
IF OBJECT_ID(N'[dbo].[ThanhLyHopDongs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ThanhLyHopDongs];
GO
IF OBJECT_ID(N'[dbo].[ThanhToanHoaDons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ThanhToanHoaDons];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ChiPhiDuAns'
CREATE TABLE [dbo].[ChiPhiDuAns] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MoTaChiPhi] nvarchar(max)  NULL,
    [NgayHoaDon] datetime  NULL,
    [SoHoaDon] nvarchar(15)  NULL,
    [SoTienChuaThue] nvarchar(max)  NOT NULL,
    [ThueGTGT] nvarchar(max)  NULL,
    [ThoiGianThanhToan] nvarchar(max)  NOT NULL,
    [NguoiThanhToan] int  NOT NULL,
    [TinhTrang] nvarchar(max)  NOT NULL,
    [GhiChu] nvarchar(max)  NULL,
    [DuAnId] int  NOT NULL
);
GO

-- Creating table 'DanhMucDuAns'
CREATE TABLE [dbo].[DanhMucDuAns] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TenDanhMuc] nvarchar(100)  NOT NULL,
    [GhiChu] nvarchar(500)  NULL
);
GO

-- Creating table 'DanhMucHopDongs'
CREATE TABLE [dbo].[DanhMucHopDongs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TenDanhMuc] nvarchar(max)  NOT NULL,
    [NguoiTao] int  NOT NULL,
    [NgayGioTao] nvarchar(max)  NOT NULL,
    [MoTa] nvarchar(max)  NULL,
    [SoLuongHopDong] int  NOT NULL,
    [DanhMucCha] int  NOT NULL
);
GO

-- Creating table 'DuAns'
CREATE TABLE [dbo].[DuAns] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MaDuAn] nvarchar(16)  NOT NULL,
    [TenDuAn] nvarchar(200)  NOT NULL,
	[MoTa] nvarchar(500)  NULL,
    [HopDongId] int  NOT NULL,
    [DanhMucDuAnId] int  NOT NULL,
    [ThoiGianTao] datetime  NOT NULL,
    [NguoiTao] int  NOT NULL,
    [NhanVienList] nvarchar(500)  NOT NULL
);
GO

-- Creating table 'HoaDons'
CREATE TABLE [dbo].[HoaDons] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DuAnId] int  NOT NULL,
    [SoHoaDon] nvarchar(max)  NULL,
    [NgayHoaDon] datetime  NULL,
    [SoTienChuaThue] nvarchar(max)  NOT NULL,
    [ThueGTGT] nvarchar(max)  NOT NULL,
    [NguoiLapHoaDon] int  NOT NULL,
    [ThoiGianLapHoaDon] datetime  NOT NULL,
    [TinhTrangHoaDon] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'HopDongs'
CREATE TABLE [dbo].[HopDongs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SoHopDong] nvarchar(50)  NOT NULL,
    [NgayKy] datetime  NOT NULL,
    [NguoiKyHopDong] int  NOT NULL,
    [NoiDung] nvarchar(500)  NOT NULL,
    [GhiChu] nvarchar(500)  NULL,
    [KhachHangId] int  NOT NULL,
    [GiaTriHopDong] float  NOT NULL,
    [DanhMucHopDongId] int  NOT NULL
);
GO

-- Creating table 'KhachHangs'
CREATE TABLE [dbo].[KhachHangs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MaKhachHang] nvarchar(16)  NOT NULL,
    [TenKhachHang] nvarchar(200)  NOT NULL,
    [GhiChu] nvarchar(500)  NULL,
    [DiaChi] nvarchar(500)  NOT NULL,
    [NhomKhachHangId] int  NOT NULL,
    [Email] nvarchar(500)  NULL,
    [DienThoai] nvarchar(15)  NULL,
    [Website] nvarchar(50)  NULL,
    [NguoiThem] int  NOT NULL,
    [ThoiGianThem] datetime  NOT NULL
);
GO

-- Creating table 'LienHeKhachHangs'
CREATE TABLE [dbo].[LienHeKhachHangs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [HoVaTen] nvarchar(50)  NOT NULL,
    [ChucVu] nvarchar(50)  NULL,
    [SoDienThoai] nchar(15)  NULL,
    [DiaChi] nvarchar(500)  NULL,
    [Email] nvarchar(500)  NULL,
    [KhachHangId] int  NOT NULL,
    [NguoiThem] int  NOT NULL,
    [ThoiGianThem] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LienKetLists'
CREATE TABLE [dbo].[LienKetLists] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TenNhomLienKet] nvarchar(max)  NOT NULL,
    [GhiChu] nvarchar(max)  NULL,
    [NguoiTao] int  NOT NULL,
    [ThoiGianTao] datetime  NOT NULL,
    [DuAnId] int  NOT NULL
);
GO

-- Creating table 'LienKets'
CREATE TABLE [dbo].[LienKets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LienKetListId] int  NOT NULL,
    [Link] nvarchar(max)  NOT NULL,
    [Ten] nvarchar(max)  NOT NULL,
    [GhiChu] nvarchar(max)  NULL,
    [NguoiChiaSe] int  NOT NULL,
    [ThoiGianChiaSe] datetime  NOT NULL
);
GO

-- Creating table 'MocThoiGians'
CREATE TABLE [dbo].[MocThoiGians] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ten] nvarchar(50)  NOT NULL,
    [MoTa] nvarchar(500)  NOT NULL,
    [NgayDenHan] datetime  NOT NULL,
    [NguoiTao] int  NOT NULL,
    [ThoiGianTao] datetime  NOT NULL,
    [NguoiChiuTrachNhiem] int  NOT NULL,
    [DuAnId] int  NOT NULL,
    [NhacNho] nvarchar(500)  NULL,
    [ThongBao] nvarchar(500)  NULL
);
GO

-- Creating table 'NhanViens'
CREATE TABLE [dbo].[NhanViens] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Email] nvarchar(50)  NOT NULL UNIQUE,
    [TenDangNhap] nvarchar(18)  NOT NULL UNIQUE,
    [Password] nvarchar(32)  NOT NULL,
    [HoVaTen] nvarchar(50)  NOT NULL,
    [SoDienThoai] nvarchar(11)  NOT NULL,
    [NgaySinh] datetime NULL,
    [DiaChi] nvarchar(200)  NULL,
    [PhanQuyen] nvarchar(16)  NOT NULL,
    [ChucVu] nvarchar(max)  NULL,
    [Skype] nvarchar(max) NOT NULL
);
GO

-- Creating table 'NhanXets'
CREATE TABLE [dbo].[NhanXets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NoiDung] nvarchar(max)  NOT NULL,
    [NguoiNhanXet] int  NOT NULL,
    [ThoiGian] datetime  NOT NULL,
    [MaNhanXet] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NhomKhachHangs'
CREATE TABLE [dbo].[NhomKhachHangs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TenNhom] nvarchar(100)  NOT NULL,
    [NguoiTao] int  NOT NULL,
    [ThoiGianTao] datetime  NOT NULL
);
GO

-- Creating table 'PhuLucHopDongs'
CREATE TABLE [dbo].[PhuLucHopDongs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SoPhuLucHopDong] nvarchar(50)  NOT NULL,
    [HopDongId] int  NOT NULL,
    [NgayKy] datetime  NOT NULL,
    [NoiDung] nvarchar(500)  NOT NULL,
    [GhiChu] nvarchar(500)  NOT NULL,
    [NguoiKy] int  NOT NULL
);
GO

-- Creating table 'Reminders'
CREATE TABLE [dbo].[Reminders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NhanVienList] nvarchar(max)  NOT NULL,
    [NguoiTao] int  NOT NULL,
    [ThoiGianTao] datetime  NOT NULL,
    [NoiDung] nvarchar(max)  NOT NULL,
    [ThoiGianNhacNho] datetime  NOT NULL,
    [DuAnId] int  NOT NULL
);
GO

-- Creating table 'RuiRoes'
CREATE TABLE [dbo].[RuiRoes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NguonRuiRo] nvarchar(max)  NOT NULL,
    [MoTa] nvarchar(max)  NOT NULL,
    [KhaNangXayRa] nvarchar(max)  NOT NULL,
    [MucDoAnhHuong] nvarchar(max)  NOT NULL,
    [TinhTrang] nvarchar(max)  NOT NULL,
    [NguoiXacDinh] int  NOT NULL,
    [ThoiGianXacDinh] datetime  NOT NULL,
    [GhiChu] nvarchar(max)  NOT NULL,
    [DuAnId] int  NOT NULL
);
GO

-- Creating table 'SoGhiChepLists'
CREATE TABLE [dbo].[SoGhiChepLists] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ten] nvarchar(50)  NOT NULL,
    [MoTa] nvarchar(500)  NULL,
    [GhiChu] nvarchar(500)  NULL,
    [NguoiTao] int  NOT NULL,
    [ThoiGianTao] datetime  NOT NULL
);
GO

-- Creating table 'SoGhiCheps'
CREATE TABLE [dbo].[SoGhiCheps] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ten] nvarchar(max)  NOT NULL,
    [MoTa] nvarchar(max)  NOT NULL,
    [SoGhiChepListId] int  NOT NULL,
    [NgayGioTao] datetime  NOT NULL,
    [NguoiTao] int  NOT NULL,
    [NoiDung] varbinary(max)  NOT NULL
);
GO

-- Creating table 'TaskLists'
CREATE TABLE [dbo].[TaskLists] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DuAnId] int  NOT NULL,
    [TenTaskList] nvarchar(50)  NOT NULL,
    [GhiChu] nvarchar(500)  NULL,
    [NguoiTaoTaskList] int  NOT NULL,
    [ThoiGianTao] datetime  NOT NULL,
    [ThoiGianBatDau] datetime  NULL,
    [ThoiGianDenHan] datetime  NULL,
    [NhanVienList] nvarchar(500)  NOT NULL
);
GO

-- Creating table 'Tasks'
CREATE TABLE [dbo].[Tasks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TaskListId] int  NOT NULL,
    [NguoiTaoTask] int  NOT NULL,
    [ThoiGianTaoTask] datetime  NOT NULL,
    [NoiDung] nvarchar(500)  NOT NULL,
    [ChiTiet] nvarchar(1000)  NOT NULL,
    [MucDoUuTien] tinyint  NOT NULL,
    [TienDo] tinyint  NOT NULL,
    [ThoiGianUocTinhHoanThanh] bigint  NULL,
    [Tag] nvarchar(500)  NULL,
    [NhacNho] nvarchar(500)  NULL,
    [ThongBao] nvarchar(500)  NULL,
    [ThoiGianDenHan] datetime  NOT NULL,
    [NhanVienList] nvarchar(500)  NOT NULL
);
GO

-- Creating table 'ThanhLyHopDongs'
CREATE TABLE [dbo].[ThanhLyHopDongs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SoThanhLyHopDong] nvarchar(50)  NOT NULL,
    [NgayKy] datetime  NOT NULL,
    [NoiDung] nvarchar(500)  NOT NULL,
    [GhiChu] nvarchar(500)  NOT NULL,
    [NguoiKy] int  NOT NULL,
    [HopDongId] int  NOT NULL
);
GO

-- Creating table 'ThanhToanHoaDons'
CREATE TABLE [dbo].[ThanhToanHoaDons] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NguoiGhiSo] int  NOT NULL,
    [ThoiGianGhiSo] datetime  NOT NULL,
    [SoTienThanhToan] nvarchar(max)  NOT NULL,
    [HoaDonId] int  NOT NULL,
    [DuAnId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ChiPhiDuAns'
ALTER TABLE [dbo].[ChiPhiDuAns]
ADD CONSTRAINT [PK_ChiPhiDuAns]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DanhMucDuAns'
ALTER TABLE [dbo].[DanhMucDuAns]
ADD CONSTRAINT [PK_DanhMucDuAns]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DanhMucHopDongs'
ALTER TABLE [dbo].[DanhMucHopDongs]
ADD CONSTRAINT [PK_DanhMucHopDongs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DuAns'
ALTER TABLE [dbo].[DuAns]
ADD CONSTRAINT [PK_DuAns]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'HoaDons'
ALTER TABLE [dbo].[HoaDons]
ADD CONSTRAINT [PK_HoaDons]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'HopDongs'
ALTER TABLE [dbo].[HopDongs]
ADD CONSTRAINT [PK_HopDongs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'KhachHangs'
ALTER TABLE [dbo].[KhachHangs]
ADD CONSTRAINT [PK_KhachHangs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [HoVaTen] in table 'LienHeKhachHangs'
ALTER TABLE [dbo].[LienHeKhachHangs]
ADD CONSTRAINT [PK_LienHeKhachHangs]
    PRIMARY KEY CLUSTERED ([Id], [HoVaTen] ASC);
GO

-- Creating primary key on [Id] in table 'LienKetLists'
ALTER TABLE [dbo].[LienKetLists]
ADD CONSTRAINT [PK_LienKetLists]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LienKets'
ALTER TABLE [dbo].[LienKets]
ADD CONSTRAINT [PK_LienKets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MocThoiGians'
ALTER TABLE [dbo].[MocThoiGians]
ADD CONSTRAINT [PK_MocThoiGians]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NhanViens'
ALTER TABLE [dbo].[NhanViens]
ADD CONSTRAINT [PK_NhanViens]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NhanXets'
ALTER TABLE [dbo].[NhanXets]
ADD CONSTRAINT [PK_NhanXets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NhomKhachHangs'
ALTER TABLE [dbo].[NhomKhachHangs]
ADD CONSTRAINT [PK_NhomKhachHangs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PhuLucHopDongs'
ALTER TABLE [dbo].[PhuLucHopDongs]
ADD CONSTRAINT [PK_PhuLucHopDongs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Reminders'
ALTER TABLE [dbo].[Reminders]
ADD CONSTRAINT [PK_Reminders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RuiRoes'
ALTER TABLE [dbo].[RuiRoes]
ADD CONSTRAINT [PK_RuiRoes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SoGhiChepLists'
ALTER TABLE [dbo].[SoGhiChepLists]
ADD CONSTRAINT [PK_SoGhiChepLists]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SoGhiCheps'
ALTER TABLE [dbo].[SoGhiCheps]
ADD CONSTRAINT [PK_SoGhiCheps]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TaskLists'
ALTER TABLE [dbo].[TaskLists]
ADD CONSTRAINT [PK_TaskLists]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [PK_Tasks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ThanhLyHopDongs'
ALTER TABLE [dbo].[ThanhLyHopDongs]
ADD CONSTRAINT [PK_ThanhLyHopDongs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ThanhToanHoaDons'
ALTER TABLE [dbo].[ThanhToanHoaDons]
ADD CONSTRAINT [PK_ThanhToanHoaDons]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DuAnId] in table 'ChiPhiDuAns'
ALTER TABLE [dbo].[ChiPhiDuAns]
ADD CONSTRAINT [FK_ChiPhiDuAnDuAn]
    FOREIGN KEY ([DuAnId])
    REFERENCES [dbo].[DuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ChiPhiDuAnDuAn'
CREATE INDEX [IX_FK_ChiPhiDuAnDuAn]
ON [dbo].[ChiPhiDuAns]
    ([DuAnId]);
GO

-- Creating foreign key on [NguoiThanhToan] in table 'ChiPhiDuAns'
ALTER TABLE [dbo].[ChiPhiDuAns]
ADD CONSTRAINT [FK_ChiPhiDuAnNhanVien]
    FOREIGN KEY ([NguoiThanhToan])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ChiPhiDuAnNhanVien'
CREATE INDEX [IX_FK_ChiPhiDuAnNhanVien]
ON [dbo].[ChiPhiDuAns]
    ([NguoiThanhToan]);
GO

-- Creating foreign key on [DanhMucDuAnId] in table 'DuAns'
ALTER TABLE [dbo].[DuAns]
ADD CONSTRAINT [FK_DuAnDanhMucDuAn]
    FOREIGN KEY ([DanhMucDuAnId])
    REFERENCES [dbo].[DanhMucDuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DuAnDanhMucDuAn'
CREATE INDEX [IX_FK_DuAnDanhMucDuAn]
ON [dbo].[DuAns]
    ([DanhMucDuAnId]);
GO

-- Creating foreign key on [NguoiTao] in table 'DanhMucHopDongs'
ALTER TABLE [dbo].[DanhMucHopDongs]
ADD CONSTRAINT [FK_DanhMucHopDongNhanVien]
    FOREIGN KEY ([NguoiTao])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DanhMucHopDongNhanVien'
CREATE INDEX [IX_FK_DanhMucHopDongNhanVien]
ON [dbo].[DanhMucHopDongs]
    ([NguoiTao]);
GO

-- Creating foreign key on [DanhMucHopDongId] in table 'HopDongs'
ALTER TABLE [dbo].[HopDongs]
ADD CONSTRAINT [FK_HopDongDanhMucHopDong]
    FOREIGN KEY ([DanhMucHopDongId])
    REFERENCES [dbo].[DanhMucHopDongs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HopDongDanhMucHopDong'
CREATE INDEX [IX_FK_HopDongDanhMucHopDong]
ON [dbo].[HopDongs]
    ([DanhMucHopDongId]);
GO

-- Creating foreign key on [NguoiTao] in table 'DuAns'
ALTER TABLE [dbo].[DuAns]
ADD CONSTRAINT [FK_DuAnNhanVien]
    FOREIGN KEY ([NguoiTao])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DuAnNhanVien'
CREATE INDEX [IX_FK_DuAnNhanVien]
ON [dbo].[DuAns]
    ([NguoiTao]);
GO

-- Creating foreign key on [HopDongId] in table 'DuAns'
ALTER TABLE [dbo].[DuAns]
ADD CONSTRAINT [FK_HopDongDuAn]
    FOREIGN KEY ([HopDongId])
    REFERENCES [dbo].[HopDongs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HopDongDuAn'
CREATE INDEX [IX_FK_HopDongDuAn]
ON [dbo].[DuAns]
    ([HopDongId]);
GO

-- Creating foreign key on [DuAnId] in table 'LienKetLists'
ALTER TABLE [dbo].[LienKetLists]
ADD CONSTRAINT [FK_LienKetListDuAn]
    FOREIGN KEY ([DuAnId])
    REFERENCES [dbo].[DuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LienKetListDuAn'
CREATE INDEX [IX_FK_LienKetListDuAn]
ON [dbo].[LienKetLists]
    ([DuAnId]);
GO

-- Creating foreign key on [DuAnId] in table 'MocThoiGians'
ALTER TABLE [dbo].[MocThoiGians]
ADD CONSTRAINT [FK_MocThoiGianDuAn]
    FOREIGN KEY ([DuAnId])
    REFERENCES [dbo].[DuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MocThoiGianDuAn'
CREATE INDEX [IX_FK_MocThoiGianDuAn]
ON [dbo].[MocThoiGians]
    ([DuAnId]);
GO

-- Creating foreign key on [DuAnId] in table 'Reminders'
ALTER TABLE [dbo].[Reminders]
ADD CONSTRAINT [FK_ReminderDuAn]
    FOREIGN KEY ([DuAnId])
    REFERENCES [dbo].[DuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReminderDuAn'
CREATE INDEX [IX_FK_ReminderDuAn]
ON [dbo].[Reminders]
    ([DuAnId]);
GO

-- Creating foreign key on [DuAnId] in table 'RuiRoes'
ALTER TABLE [dbo].[RuiRoes]
ADD CONSTRAINT [FK_RuiRoDuAn]
    FOREIGN KEY ([DuAnId])
    REFERENCES [dbo].[DuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuiRoDuAn'
CREATE INDEX [IX_FK_RuiRoDuAn]
ON [dbo].[RuiRoes]
    ([DuAnId]);
GO

-- Creating foreign key on [DuAnId] in table 'TaskLists'
ALTER TABLE [dbo].[TaskLists]
ADD CONSTRAINT [FK_TaskList_DuAn]
    FOREIGN KEY ([DuAnId])
    REFERENCES [dbo].[DuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskList_DuAn'
CREATE INDEX [IX_FK_TaskList_DuAn]
ON [dbo].[TaskLists]
    ([DuAnId]);
GO

-- Creating foreign key on [DuAnId] in table 'HoaDons'
ALTER TABLE [dbo].[HoaDons]
ADD CONSTRAINT [FK_ThanhToanDuAn]
    FOREIGN KEY ([DuAnId])
    REFERENCES [dbo].[DuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ThanhToanDuAn'
CREATE INDEX [IX_FK_ThanhToanDuAn]
ON [dbo].[HoaDons]
    ([DuAnId]);
GO

-- Creating foreign key on [DuAnId] in table 'ThanhToanHoaDons'
ALTER TABLE [dbo].[ThanhToanHoaDons]
ADD CONSTRAINT [FK_ThanhToanHoaDonDuAn]
    FOREIGN KEY ([DuAnId])
    REFERENCES [dbo].[DuAns]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ThanhToanHoaDonDuAn'
CREATE INDEX [IX_FK_ThanhToanHoaDonDuAn]
ON [dbo].[ThanhToanHoaDons]
    ([DuAnId]);
GO

-- Creating foreign key on [NguoiLapHoaDon] in table 'HoaDons'
ALTER TABLE [dbo].[HoaDons]
ADD CONSTRAINT [FK_HoaDonNhanVien]
    FOREIGN KEY ([NguoiLapHoaDon])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HoaDonNhanVien'
CREATE INDEX [IX_FK_HoaDonNhanVien]
ON [dbo].[HoaDons]
    ([NguoiLapHoaDon]);
GO

-- Creating foreign key on [HoaDonId] in table 'ThanhToanHoaDons'
ALTER TABLE [dbo].[ThanhToanHoaDons]
ADD CONSTRAINT [FK_ThanhToanHoaDonHoaDon]
    FOREIGN KEY ([HoaDonId])
    REFERENCES [dbo].[HoaDons]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ThanhToanHoaDonHoaDon'
CREATE INDEX [IX_FK_ThanhToanHoaDonHoaDon]
ON [dbo].[ThanhToanHoaDons]
    ([HoaDonId]);
GO

-- Creating foreign key on [KhachHangId] in table 'HopDongs'
ALTER TABLE [dbo].[HopDongs]
ADD CONSTRAINT [FK_HopDong_KhachHang]
    FOREIGN KEY ([KhachHangId])
    REFERENCES [dbo].[KhachHangs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HopDong_KhachHang'
CREATE INDEX [IX_FK_HopDong_KhachHang]
ON [dbo].[HopDongs]
    ([KhachHangId]);
GO

-- Creating foreign key on [HopDongId] in table 'ThanhLyHopDongs'
ALTER TABLE [dbo].[ThanhLyHopDongs]
ADD CONSTRAINT [FK_HopDongThanhLyHopDong]
    FOREIGN KEY ([HopDongId])
    REFERENCES [dbo].[HopDongs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HopDongThanhLyHopDong'
CREATE INDEX [IX_FK_HopDongThanhLyHopDong]
ON [dbo].[ThanhLyHopDongs]
    ([HopDongId]);
GO

-- Creating foreign key on [NguoiKyHopDong] in table 'HopDongs'
ALTER TABLE [dbo].[HopDongs]
ADD CONSTRAINT [FK_NguoiKyHopDong]
    FOREIGN KEY ([NguoiKyHopDong])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NguoiKyHopDong'
CREATE INDEX [IX_FK_NguoiKyHopDong]
ON [dbo].[HopDongs]
    ([NguoiKyHopDong]);
GO

-- Creating foreign key on [HopDongId] in table 'PhuLucHopDongs'
ALTER TABLE [dbo].[PhuLucHopDongs]
ADD CONSTRAINT [FK_PhuLucHopDong_HopDong]
    FOREIGN KEY ([HopDongId])
    REFERENCES [dbo].[HopDongs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhuLucHopDong_HopDong'
CREATE INDEX [IX_FK_PhuLucHopDong_HopDong]
ON [dbo].[PhuLucHopDongs]
    ([HopDongId]);
GO

-- Creating foreign key on [NguoiThem] in table 'KhachHangs'
ALTER TABLE [dbo].[KhachHangs]
ADD CONSTRAINT [FK_KhachHangNhanVien]
    FOREIGN KEY ([NguoiThem])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KhachHangNhanVien'
CREATE INDEX [IX_FK_KhachHangNhanVien]
ON [dbo].[KhachHangs]
    ([NguoiThem]);
GO

-- Creating foreign key on [KhachHangId] in table 'LienHeKhachHangs'
ALTER TABLE [dbo].[LienHeKhachHangs]
ADD CONSTRAINT [FK_LienHeKhachHangKhachHang]
    FOREIGN KEY ([KhachHangId])
    REFERENCES [dbo].[KhachHangs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LienHeKhachHangKhachHang'
CREATE INDEX [IX_FK_LienHeKhachHangKhachHang]
ON [dbo].[LienHeKhachHangs]
    ([KhachHangId]);
GO

-- Creating foreign key on [NhomKhachHangId] in table 'KhachHangs'
ALTER TABLE [dbo].[KhachHangs]
ADD CONSTRAINT [FK_NhomKhachHang_KhachHang]
    FOREIGN KEY ([NhomKhachHangId])
    REFERENCES [dbo].[NhomKhachHangs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NhomKhachHang_KhachHang'
CREATE INDEX [IX_FK_NhomKhachHang_KhachHang]
ON [dbo].[KhachHangs]
    ([NhomKhachHangId]);
GO

-- Creating foreign key on [NguoiThem] in table 'LienHeKhachHangs'
ALTER TABLE [dbo].[LienHeKhachHangs]
ADD CONSTRAINT [FK_LienHeKhachHangNhanVien]
    FOREIGN KEY ([NguoiThem])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LienHeKhachHangNhanVien'
CREATE INDEX [IX_FK_LienHeKhachHangNhanVien]
ON [dbo].[LienHeKhachHangs]
    ([NguoiThem]);
GO

-- Creating foreign key on [LienKetListId] in table 'LienKets'
ALTER TABLE [dbo].[LienKets]
ADD CONSTRAINT [FK_LienKetLienKetList]
    FOREIGN KEY ([LienKetListId])
    REFERENCES [dbo].[LienKetLists]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LienKetLienKetList'
CREATE INDEX [IX_FK_LienKetLienKetList]
ON [dbo].[LienKets]
    ([LienKetListId]);
GO

-- Creating foreign key on [NguoiTao] in table 'LienKetLists'
ALTER TABLE [dbo].[LienKetLists]
ADD CONSTRAINT [FK_LienKetListNhanVien]
    FOREIGN KEY ([NguoiTao])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LienKetListNhanVien'
CREATE INDEX [IX_FK_LienKetListNhanVien]
ON [dbo].[LienKetLists]
    ([NguoiTao]);
GO

-- Creating foreign key on [NguoiChiaSe] in table 'LienKets'
ALTER TABLE [dbo].[LienKets]
ADD CONSTRAINT [FK_LienKetNhanVien]
    FOREIGN KEY ([NguoiChiaSe])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LienKetNhanVien'
CREATE INDEX [IX_FK_LienKetNhanVien]
ON [dbo].[LienKets]
    ([NguoiChiaSe]);
GO

-- Creating foreign key on [NguoiChiuTrachNhiem] in table 'MocThoiGians'
ALTER TABLE [dbo].[MocThoiGians]
ADD CONSTRAINT [FK_MocThoiGian_NguoiChiuTrachNhiem]
    FOREIGN KEY ([NguoiChiuTrachNhiem])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MocThoiGian_NguoiChiuTrachNhiem'
CREATE INDEX [IX_FK_MocThoiGian_NguoiChiuTrachNhiem]
ON [dbo].[MocThoiGians]
    ([NguoiChiuTrachNhiem]);
GO

-- Creating foreign key on [NguoiTao] in table 'MocThoiGians'
ALTER TABLE [dbo].[MocThoiGians]
ADD CONSTRAINT [FK_MocThoiGian_NhanVien]
    FOREIGN KEY ([NguoiTao])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MocThoiGian_NhanVien'
CREATE INDEX [IX_FK_MocThoiGian_NhanVien]
ON [dbo].[MocThoiGians]
    ([NguoiTao]);
GO

-- Creating foreign key on [NguoiNhanXet] in table 'NhanXets'
ALTER TABLE [dbo].[NhanXets]
ADD CONSTRAINT [FK_NhanXetNhanVien]
    FOREIGN KEY ([NguoiNhanXet])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NhanXetNhanVien'
CREATE INDEX [IX_FK_NhanXetNhanVien]
ON [dbo].[NhanXets]
    ([NguoiNhanXet]);
GO

-- Creating foreign key on [NguoiTao] in table 'NhomKhachHangs'
ALTER TABLE [dbo].[NhomKhachHangs]
ADD CONSTRAINT [FK_NhomKhachHangNhanVien]
    FOREIGN KEY ([NguoiTao])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NhomKhachHangNhanVien'
CREATE INDEX [IX_FK_NhomKhachHangNhanVien]
ON [dbo].[NhomKhachHangs]
    ([NguoiTao]);
GO

-- Creating foreign key on [NguoiKy] in table 'PhuLucHopDongs'
ALTER TABLE [dbo].[PhuLucHopDongs]
ADD CONSTRAINT [FK_PhuLucHopDong_NhanVien]
    FOREIGN KEY ([NguoiKy])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhuLucHopDong_NhanVien'
CREATE INDEX [IX_FK_PhuLucHopDong_NhanVien]
ON [dbo].[PhuLucHopDongs]
    ([NguoiKy]);
GO

-- Creating foreign key on [NguoiTao] in table 'Reminders'
ALTER TABLE [dbo].[Reminders]
ADD CONSTRAINT [FK_ReminderNhanVien]
    FOREIGN KEY ([NguoiTao])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReminderNhanVien'
CREATE INDEX [IX_FK_ReminderNhanVien]
ON [dbo].[Reminders]
    ([NguoiTao]);
GO

-- Creating foreign key on [NguoiXacDinh] in table 'RuiRoes'
ALTER TABLE [dbo].[RuiRoes]
ADD CONSTRAINT [FK_RuiRoNhanVien]
    FOREIGN KEY ([NguoiXacDinh])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuiRoNhanVien'
CREATE INDEX [IX_FK_RuiRoNhanVien]
ON [dbo].[RuiRoes]
    ([NguoiXacDinh]);
GO

-- Creating foreign key on [NguoiTao] in table 'SoGhiChepLists'
ALTER TABLE [dbo].[SoGhiChepLists]
ADD CONSTRAINT [FK_SoGhiChepListNhanVien]
    FOREIGN KEY ([NguoiTao])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SoGhiChepListNhanVien'
CREATE INDEX [IX_FK_SoGhiChepListNhanVien]
ON [dbo].[SoGhiChepLists]
    ([NguoiTao]);
GO

-- Creating foreign key on [NguoiTao] in table 'SoGhiCheps'
ALTER TABLE [dbo].[SoGhiCheps]
ADD CONSTRAINT [FK_SoGhiChepNhanVien]
    FOREIGN KEY ([NguoiTao])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SoGhiChepNhanVien'
CREATE INDEX [IX_FK_SoGhiChepNhanVien]
ON [dbo].[SoGhiCheps]
    ([NguoiTao]);
GO

-- Creating foreign key on [NguoiTaoTask] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [FK_Task_NhanVien]
    FOREIGN KEY ([NguoiTaoTask])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_NhanVien'
CREATE INDEX [IX_FK_Task_NhanVien]
ON [dbo].[Tasks]
    ([NguoiTaoTask]);
GO

-- Creating foreign key on [NguoiTaoTaskList] in table 'TaskLists'
ALTER TABLE [dbo].[TaskLists]
ADD CONSTRAINT [FK_TaskList_NhanVien]
    FOREIGN KEY ([NguoiTaoTaskList])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskList_NhanVien'
CREATE INDEX [IX_FK_TaskList_NhanVien]
ON [dbo].[TaskLists]
    ([NguoiTaoTaskList]);
GO

-- Creating foreign key on [NguoiKy] in table 'ThanhLyHopDongs'
ALTER TABLE [dbo].[ThanhLyHopDongs]
ADD CONSTRAINT [FK_ThanhLyHopDong_NhanVien]
    FOREIGN KEY ([NguoiKy])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ThanhLyHopDong_NhanVien'
CREATE INDEX [IX_FK_ThanhLyHopDong_NhanVien]
ON [dbo].[ThanhLyHopDongs]
    ([NguoiKy]);
GO

-- Creating foreign key on [NguoiGhiSo] in table 'ThanhToanHoaDons'
ALTER TABLE [dbo].[ThanhToanHoaDons]
ADD CONSTRAINT [FK_ThanhToanHoaDonNhanVien]
    FOREIGN KEY ([NguoiGhiSo])
    REFERENCES [dbo].[NhanViens]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ThanhToanHoaDonNhanVien'
CREATE INDEX [IX_FK_ThanhToanHoaDonNhanVien]
ON [dbo].[ThanhToanHoaDons]
    ([NguoiGhiSo]);
GO

-- Creating foreign key on [SoGhiChepListId] in table 'SoGhiCheps'
ALTER TABLE [dbo].[SoGhiCheps]
ADD CONSTRAINT [FK_SoGhiChepSoGhiChepList]
    FOREIGN KEY ([SoGhiChepListId])
    REFERENCES [dbo].[SoGhiChepLists]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SoGhiChepSoGhiChepList'
CREATE INDEX [IX_FK_SoGhiChepSoGhiChepList]
ON [dbo].[SoGhiCheps]
    ([SoGhiChepListId]);
GO

-- Creating foreign key on [TaskListId] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [FK_Task_TaskList]
    FOREIGN KEY ([TaskListId])
    REFERENCES [dbo].[TaskLists]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_TaskList'
CREATE INDEX [IX_FK_Task_TaskList]
ON [dbo].[Tasks]
    ([TaskListId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------