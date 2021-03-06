USE [master]
GO
/****** Object:  Database [quanlycuahangdongho]    Script Date: 10/05/2020 2:55:43 CH ******/
CREATE DATABASE [quanlycuahangdongho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quanlycuahangdongho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\quanlycuahangdongho.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'quanlycuahangdongho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\quanlycuahangdongho_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [quanlycuahangdongho] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quanlycuahangdongho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quanlycuahangdongho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET ARITHABORT OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quanlycuahangdongho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quanlycuahangdongho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET  DISABLE_BROKER 
GO
ALTER DATABASE [quanlycuahangdongho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quanlycuahangdongho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [quanlycuahangdongho] SET  MULTI_USER 
GO
ALTER DATABASE [quanlycuahangdongho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quanlycuahangdongho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [quanlycuahangdongho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [quanlycuahangdongho] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [quanlycuahangdongho] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [quanlycuahangdongho] SET QUERY_STORE = OFF
GO
USE [quanlycuahangdongho]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 10/05/2020 2:55:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[categoryID] [nvarchar](50) NOT NULL,
	[categoryName] [nvarchar](150) NOT NULL,
	[description] [nvarchar](200) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 10/05/2020 2:55:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customerID] [nvarchar](20) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[address] [nvarchar](200) NULL,
	[status] [int] NULL,
	[fullName] [nvarchar](100) NOT NULL,
	[birthDate] [date] NULL,
	[avatar] [text] NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 10/05/2020 2:55:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employeeID] [nvarchar](20) NOT NULL,
	[employeeName] [nvarchar](100) NOT NULL,
	[address] [nvarchar](200) NULL,
	[email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](32) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[birthDate] [date] NULL,
	[avatar] [text] NULL,
	[roll] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetail]    Script Date: 10/05/2020 2:55:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetail](
	[orderID] [nvarchar](20) NOT NULL,
	[productID] [nvarchar](20) NOT NULL,
	[unitPrice] [int] NULL,
	[quantity] [int] NULL,
	[discount] [float] NULL,
 CONSTRAINT [PK_orderdetail] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 10/05/2020 2:55:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderID] [nvarchar](20) NOT NULL,
	[employeeID] [nvarchar](20) NOT NULL,
	[customerID] [nvarchar](20) NOT NULL,
	[orderDate] [date] NULL,
	[shipperID] [nvarchar](20) NULL,
	[shippedDate] [date] NULL,
	[status] [nvarchar](10) NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 10/05/2020 2:55:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[productID] [nvarchar](20) NOT NULL,
	[productName] [nvarchar](150) NOT NULL,
	[supplierID] [nvarchar](150) NULL,
	[categoryID] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[unitPrice] [int] NULL,
	[discount] [float] NULL,
	[status] [int] NULL,
	[description] [text] NULL,
	[thumbnail] [nvarchar](500) NOT NULL,
	[image] [text] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shippers]    Script Date: 10/05/2020 2:55:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shippers](
	[shipperID] [nvarchar](20) NOT NULL,
	[companyName] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_shippers] PRIMARY KEY CLUSTERED 
(
	[shipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 10/05/2020 2:55:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suppliers](
	[supplierID] [nvarchar](150) NOT NULL,
	[companyName] [nvarchar](150) NOT NULL,
	[address] [nvarchar](150) NULL,
	[phone] [nvarchar](20) NULL,
	[website] [nvarchar](80) NULL,
 CONSTRAINT [PK_suppliers] PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[categories] ([categoryID], [categoryName], [description]) VALUES (N'CAT01', N'Mens watches', N'Đồng hồ dành cho nam')
INSERT [dbo].[categories] ([categoryID], [categoryName], [description]) VALUES (N'CAT02', N'Ladies watches', N'Ðồng hồ dành cho nữ')
GO
INSERT [dbo].[customers] ([customerID], [password], [email], [phone], [address], [status], [fullName], [birthDate], [avatar]) VALUES (N'CUS001', N'123', N'nguyenvuphong@gmail.com', N'0381465213', N'Hà Nội', NULL, N'Nguyen Vu Phong', NULL, NULL)
INSERT [dbo].[customers] ([customerID], [password], [email], [phone], [address], [status], [fullName], [birthDate], [avatar]) VALUES (N'CUS002', N'123', N'nguyenvanan@gmail.com', N'0331546212', N'hồi Phòng', NULL, N'Nguyễn Van An', NULL, NULL)
INSERT [dbo].[customers] ([customerID], [password], [email], [phone], [address], [status], [fullName], [birthDate], [avatar]) VALUES (N'CUS003', N'123', N'lethibinh@gmail.com', N'0314526123', N'Nghệ An', NULL, N'Lê Thị Bình', NULL, NULL)
INSERT [dbo].[customers] ([customerID], [password], [email], [phone], [address], [status], [fullName], [birthDate], [avatar]) VALUES (N'CUS004', N'456', N'nguyenhongnhung', N'0331452369', N'Thái Bình', NULL, N'Nguyễn Hồng Nhung', NULL, NULL)
INSERT [dbo].[customers] ([customerID], [password], [email], [phone], [address], [status], [fullName], [birthDate], [avatar]) VALUES (N'CUS005', N'456', N'phandinh@gmail.com', N'0331245782', N'Hà Nội', NULL, N'Phan Van Ðình', NULL, NULL)
INSERT [dbo].[customers] ([customerID], [password], [email], [phone], [address], [status], [fullName], [birthDate], [avatar]) VALUES (N'CUS006', N'456', N'lethiha@gmail.com', N'0332645874', N'Thanh Hóa', NULL, N'Lê Thị Hà', NULL, NULL)
GO
INSERT [dbo].[employees] ([employeeID], [employeeName], [address], [email], [password], [phone], [birthDate], [avatar], [roll]) VALUES (N'EM001', N'Nguyễn Ðình Lâm', N'Hà Nội', N'nguyendinhlam@gmail.com', N'123', N'0331232456', NULL, NULL, N'')
INSERT [dbo].[employees] ([employeeID], [employeeName], [address], [email], [password], [phone], [birthDate], [avatar], [roll]) VALUES (N'EM002', N'Lê Minh Quang', N'Hà Nam', N'leminhquang@gmail.com', N'123', N'0314545782', NULL, NULL, N'')
INSERT [dbo].[employees] ([employeeID], [employeeName], [address], [email], [password], [phone], [birthDate], [avatar], [roll]) VALUES (N'EM003', N'Ðào Minh Ðức', N'Hà Nội', N'daomanhduc@gmail.com', N'123', N'0331263148', NULL, NULL, N'')
INSERT [dbo].[employees] ([employeeID], [employeeName], [address], [email], [password], [phone], [birthDate], [avatar], [roll]) VALUES (N'EM004', N'Hoàng Minh Cuờng', N'Thái Bình', N'hoangmanhcuong@gmail.com', N'123', N'0381497853', NULL, NULL, N'')
INSERT [dbo].[employees] ([employeeID], [employeeName], [address], [email], [password], [phone], [birthDate], [avatar], [roll]) VALUES (N'EM005', N'Ðoàn Thị Nga', N'Thái Bình', N'doanthinga@gmail.com', N'123', N'0312545879', NULL, NULL, N'')
GO
INSERT [dbo].[orderdetail] ([orderID], [productID], [unitPrice], [quantity], [discount]) VALUES (N'ORD0001', N'PRO0007', 85738250, 2, 13
INSERT [dbo].[orderdetail] ([orderID], [productID], [unitPrice], [quantity], [discount]) VALUES (N'ORD0002', N'PRO0004', 139035000, 1, 13)
GO
INSERT [dbo].[orders] ([orderID], [employeeID], [customerID], [orderDate], [shipperID], [shippedDate], [status]) VALUES (N'ORD0001', N'EM001', N'CUS001', CAST(N'2019-12-14' AS Date), N'SHIP001', CAST(N'2019-12-20' AS Date), N'1')
INSERT [dbo].[orders] ([orderID], [employeeID], [customerID], [orderDate], [shipperID], [shippedDate], [status]) VALUES (N'ORD0002', N'EM002', N'CUS002', CAST(N'2019-12-06' AS Date), N'SHIP002', CAST(N'2019-12-16' AS Date), N'1')
GO
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0001', N'Ballon Bleu de Silver Opaline Dial', N'SUP001', N'CAT01', 560, 129650137, 15, 1,N'vỏ thép không gỉ với vòng thép không gỉ. Cố định khung thép không gỉ. Mặt số bằng bạc opaline với bàn tay màu xanh hình thanh kiếm và vạch số giờ La Mã. Đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Tay phát quang và đánh dấu quay số. Hiển thị ngày ở vỏ trí 3 giờ. Chuyển động tự động với dự trữ năng lượng 42 giờ. Tinh thể sapphire chống trầy xước. Flute đẩy / kéo vương miện thiết lập với spinel tổng hợp hình cabbon. Trường hợp rắn trở lại. Đường kính vỏ: 42 mm. Độ dày vỏ: 13 mm. Hình dạng vỏ tròn. Chiều rộng dải: 12 mm. Chiều dài dải: 7 inch. Triển khai clasp. Chống nước ở 30 mét (100 feet). Chức năng: giờ, phút, giây, ngày. Kiểu dáng Động hồ sang trọng. Nhãn Động hồ: Swiss Made. Động hồ nam Cartier Ballon Bleu de Cartier Silver Opaline Dial thép không gỉ W69012Z4.', 'baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041.jpg', 'baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041.jpg;baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041_3.jpg;baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041_4.jpg;baume-et-mercier-capeland-chronograph-white-dial-watch-m0a10041_5.jpg ')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0002', N'Tank Opaline Dial', N'SUP001', N'CAT02', 500, 59089875, 4, 1, N'vỏ thép không gỉ với dây đeo bằng da màu đen (da bê). Cố định khung thép không gỉ. Mặt số Opaline với bàn tay màu xanh và vạch số giờ La Mã. Đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Chuyển động thạch anh. Tinh thể sapphire chống trầy xước. Trường hợp rắn trở lại. Kích thước vỏ: 34,8 mm x 27,4 mm. Độ dày vỏ: 5,55 mm. Hình chữ nhật trường hợp hình dạng. Triển khai clasp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút. Kiểu dáng Động hồ sang trọng. Nhãn Động hồ: Swiss Made. Động hồ đeo tay nữ Cartier Tank Opaline Dial WSTA0028.', ' calvin-klein-cheers-quartz-black-dial-watch-k8nx3ub1.jpg', ' calvin-klein-cheers-quartz-black-dial-watch-k8nx3ub1.jpg;calvin-klein-cheers-quartz-black-dial-watch-k8nx3ub1_2.jpg;calvin-klein-cheers-quartz-black-dial-watch-k8nx3ub1_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0003', N'Santos-Dumont Quartz Silver Dial', N'SUP001', N'CAT01', 300, 90372750, 6, 1, N'vỏ thép không gỉ với một dải cá sấu màu xanh. Cố định khung thép không gỉ màu bạc. Mặt số màu bạc với tay màu xanh và vạch số giờ La Mã. Kiểu quay số: Analog. Chuyển động thạch anh. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ hình chữ nhật, kích thước vỏ: 43,5 mm x 31,4 mm, độ dày vỏ: 7,3 mm. Gấp qua kẹp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút. Thông tin bổ sung: hộp ban đầu, thẻ bảo hành quốc tế, hướng dẫn sử dụng (phụ kiện đầy đủ). Kiểu dáng Động hồ sang trọng. Nhãn Động hồ: Swiss Made. Động hồ nam mặt số bằng bạc Cartier Santos-Dumont Quartz WSSA0022.', ' calvin-klein-cheers-quartz-silver-dial-ladies-watch-k8ny3tk6.jpg', ' calvin-klein-cheers-quartz-silver-dial-ladies-watch-k8ny3tk6.jpg;calvin-klein-cheers-quartz-silver-dial-ladies-watch-k8ny3tk6_2.jpg;calvin-klein-cheers-quartz-silver-dial-ladies-watch-k8ny3tk6_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0004', N'Ballon Bleu Automatic', N'SUP001', N'CAT01', 250, 139035000, 13, 1, N'Vỏ thép không gỉ với vòng thép không gỉ. Cố định khung thép không gỉ. Mặt số bằng bạc opaline với tay thép màu xanh và vạch số giờ La Mã màu đen. Đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Chuyển động tự động với dự trữ năng lượng 38 giờ. Tinh thể sapphire chống trầy xước. Mão thép. Trường hợp rắn trở lại. Đường kính vỏ: 36,6 mm. Độ dày vỏ: 11,9 mm. Hình dạng vỏ tròn. Ẩn gấp clasp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút, giây. Kiểu dáng đồng hồ sang trọng.\r\n', ' citizen-eco-drive-blue-angels-chronograph-stainless-steel-mens-watch-at8020-54l.jpg\r\n', ' citizen-eco-drive-blue-angels-chronograph-stainless-steel-mens-watch-at8020-54l.jpg;citizen-eco-drive-blue-angels-chronograph-stainless-steel-mens-watch-at8020-54l_2.jpg;citizen-eco-drive-blue-angels-chronograph-stainless-steel-mens-watch-at8020-54l_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0005', N'Tank Solo XL Automatic Silver Dia', N'SUP001', N'CAT01', 405, 85738250, 8, 1, N'Vỏ thép không gỉ với vòng thép không gỉ. Cố định khung thép không gỉ. Mặt số bằng bạc opaline với tay thép màu xanh và vạch số giờ La Mã. Đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Hiển thị ngày xuất hiện ở vị trí 6 giờ. Chuyển động tự động với dự trữ năng lượng 42 giờ. Tinh thể sapphire chống trầy xước. Vương miện đính cườm thiết lập với một cabel spinel tổng hợp. Trường hợp rắn trở lại. Kích thước vỏ: 31 mm x 40,85 mm. Độ dày vỏ: 7,65 mm. Hình chữ nhật trường hợp hình dạng. Chiều rộng vòng đeo tay: 22 mm. Triển khai clasp với một nút nhấn phát hành. Chống nước ở 30 mét / 100 feet. Chức năng: ngày, giờ, phút, giây. Kiểu dáng đồng hồ sang trọng.\r\n', ' citizen-promaster-professional-diver-dark-blue-dial-men_s-watch-bn0151-09l.jpg\r\n', ' citizen-promaster-professional-diver-dark-blue-dial-men_s-watch-bn0151-09l.jpg;citizen-promaster-professional-diver-dark-blue-dial-men_s-watch-bn0151-09l_2.jpg;citizen-promaster-professional-diver-dark-blue-dial-men_s-watch-bn0151-09l_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0006', N'Ronde Solo Automatic Silvered Opaline Dial', N'SUP001', N'CAT01', 320, 81103750, 10, 1, N'Vỏ thép không gỉ tông màu bạc với dây đeo bằng da màu đen (da bê). Cố định khung thép không gỉ màu bạc. Mặt số bằng bạc opaline với bàn tay màu xanh và vạch số giờ La Mã. Đánh dấu 24 giờ. đánh dấu phút xung quanh một vòng bên trong. Kiểu quay số: Analog. Chuyển động tự động với dự trữ năng lượng 42 giờ. Tinh thể sapphire chống trầy xước. Kéo / đẩy với một bộ với vương miện tổng hợp. Trường hợp rắn trở lại. Hình dạng vỏ tròn, kích thước vỏ: 42 mm, độ dày vỏ: 8,36 mm. Triển khai clasp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút, giây, 24 giờ. Kiểu dáng đồng hồ sang trọng.\r\n', ' fossil-grant-cream-dial-mens-chronograph-watch-fs4735ie.jpg\r\n', ' fossil-grant-cream-dial-mens-chronograph-watch-fs4735ie.jpg;fossil-grant-cream-dial-mens-chronograph-watch-fs4735ie_2.jpg;fossil-grant-cream-dial-mens-chronograph-watch-fs4735ie_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0007', N'Santos-Dumont Quartz Silver Dial Ladies Watch', N'SUP001', N'CAT02', 300, 85738250, 13, 1, N'Vỏ thép không gỉ với dây đeo bằng da màu xanh (cá sấu). Cố định khung thép không gỉ. Mặt số bằng bạc với bàn tay hình thanh kiếm bằng thép và dấu số giờ La Mã. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Chuyển động thạch anh. Tinh thể sapphire chống trầy xước. Đẩy / kéo vương miện được thiết lập với một chiếc taxi màu xanh. Trường hợp rắn trở lại. Hình chữ nhật trường hợp hình dạng. Kích thước vỏ: 38 mm x 27,5 mm. Độ dày vỏ: 7,3 mm. Tang kẹp. Chống nước ở 30 mét / 100 feet. Chức năng: giờ, phút. Thông tin bổ sung: hộp ban đầu, thẻ bảo hành quốc tế, hướng dẫn sử dụng (phụ kiện đầy đủ). Phong cách đồng hồ cao cấp\r\n', ' gucci-interlocking-automatic-ladies-watch-ya133516.jpg\r\n', ' gucci-interlocking-automatic-ladies-watch-ya133516.jpg;gucci-interlocking-automatic-ladies-watch-ya133516_2.jpg;gucci-interlocking-automatic-ladies-watch-ya133516_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0008', N'Submariner Automatic Black Dial Men Watch', N'SUP002', N'CAT01', 400, 240878137, 0, 1,N'Vỏ thép không gỉ với vòng đeo tay bằng thép không gỉ Rolex. Viền thép không gỉ một chiều với vòng trên cùng màu đen của Cerachrom. Mặt số màu đen với logo phát sáng của Mercedes, thanh kiếm và tay hình chữ phong cách Breguet và dấu chấm giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu. Chuyển động tự động với dự trữ năng lượng 48 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Đường kính vỏ: 40 mm. Độ dày vỏ: 13 mm. Hình dạng vỏ tròn. Chiều rộng vòng đeo tay: 19,5 mm. Hàu kẹp. Chống nước ở 300 mét / 1000 feet. Chức năng: giờ, phút, giây. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Đồng hồ nam Rolex Submariner Black Dial thép không gỉ tự động 114060.\r\n', ' seiko-automatic-black-dial-black-rubber-men_s-watch-skx007j1.jpg\r\n', ' seiko-automatic-black-dial-black-rubber-men_s-watch-skx007j1.jpg;seiko-automatic-black-dial-black-rubber-men_s-watch-skx007j1_2.jpg;seiko-automatic-black-dial-black-rubber-men_s-watch-skx007j1_3.jpg' )
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0009', N'Oyster Perpetual Submariner Black Dial Black Cerachrom Bezel Steel Men\ Watch', N'SUP002', N'CAT01', 310, 278070000, 0, 1, N'Vỏ thép không gỉ màu bạc với vòng đeo tay bằng thép không gỉ màu bạc. Uni-directional quay bằng thép không gỉ màu đen với viền vòng trên màu đen cerachrom. Mặt số màu đen với logo màu bạc sáng chói của Mercedes, thanh kiếm và tay hình chữ Breguet và các dấu chấm giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu giờ. Hiển thị ngày ở vị trí 3 giờ. Rolex Calibre 3135 chuyển động tự động với khả năng dự trữ năng lượng trong 50 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn, kích thước vỏ: 40 mm, độ dày vỏ: 13 mm. Chiều rộng dải: 20 mm. Triển khai clasp. Chống nước ở 300 mét / 1000 feet. Chức năng: ngày, giờ, phút, giây, đồng hồ bấm giờ. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Rolex Oyster Perpetual Submariner Black Dial Black Cerachrom Bezel Steel Mens 116610LN.\r\n', ' seiko-diver-orange-dial-automatic-mens-watch-skx011j1.jpg\r\n', ' seiko-diver-orange-dial-automatic-mens-watch-skx011j1.jpg;seiko-diver-orange-dial-automatic-mens-watch-skx011j1_2.jpg;seiko-diver-orange-dial-automatic-mens-watch-skx011j1_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0010', N'Rolex GMT-Master II \" Batman\" Black and Blue Bezel Automatic Men Jubilee Watch', N'SUP002', N'CAT01', 240, 370760000, 0, 1, N'Vỏ thép không gỉ với vòng đeo tay bằng thép không gỉ rolex jubilee. Khung thép không gỉ xoay hai chiều với vòng màu đen và xanh (Người dơi) hiển thị các điểm đánh dấu 24 giờ. Mặt số màu đen với kim màu bạc sáng và vạch dấu chấm giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu. Hiển thị ngày ở vị trí 3 giờ. Rolex calibre 3285 tự động chuyển động với dự trữ năng lượng 70 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn. Kích thước vỏ: 40 mm. Gấp hàu kẹp. Chống nước ở 100 mét / 330 feet. Chức năng: ngày, giờ, phút, giây, 24 giờ, GMT. Thông tin bổ sung: 126710blro-0001, m126710blro-0001. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Rolex GMT-Master II \"Batman\" Đồng hồ đeo tay nam màu đen và xanh tự động Bezel 126710BKSJ.\r\n', ' seiko-divers-automatic-black-dial-men_s-watch-skx009j1.jpg\r\n', ' seiko-divers-automatic-black-dial-men_s-watch-skx009j1.jpg;seiko-divers-automatic-black-dial-men_s-watch-skx009j1_2.jpg;seiko-divers-automatic-black-dial-men_s-watch-skx009j1_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0011', N'Submariner \"Hulk\" Green Dial Steel Men Watch', N'SUP002', N'CAT01', 230, 364966875, 0, 1,N'Vỏ thép không gỉ màu bạc với vòng đeo tay bằng thép không gỉ màu bạc. Uni-directional xoay màu xanh lá cây bằng thép không gỉ rinfg hàng đầu. Mặt đồng hồ màu xanh lá cây với logo màu bạc của Mercedes, thanh kiếm và tay hình chữ Breguet và vạch chỉ giờ phát sáng. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu quay số. Hiển thị ngày ở vị trí 3 giờ. Rolex Calibre 3135 chuyển động tự động với khả năng dự trữ năng lượng trong 50 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn, kích thước vỏ: 40 mm, độ dày vỏ: 13 mm. Chiều rộng dải: 20 mm. Oysterlock clasp. Chống nước ở 300 mét / 1000 feet. Chức năng: ngày, giờ, phút, giây, đồng hồ bấm giờ. Phong cách lặn đồng hồ. Nhãn đồng hồ: Swiss Made. Rolex Submariner Hulk Đồng hồ nam mặt thép màu xanh lá cây 116610LV.\r\n', ' tissot-femini-t-mother-of-pearl-dial-ladies-watch-t113.109.16.116.00.jpg\r\n', ' tissot-femini-t-mother-of-pearl-dial-ladies-watch-t113.109.16.116.00.jpg;tissot-femini-t-mother-of-pearl-dial-ladies-watch-t113.109.16.116.00_2.jpg;tissot-femini-t-mother-of-pearl-dial-ladies-watch-t113.109.16.116.00_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0012', N'Explorer Black Dial Stainless Steel Oyster Bracelet Automatic Men Watch', N'SUP002', N'CAT01', 250, 180629637, 0, 1,N'Vỏ thép không gỉ màu bạc với vòng đeo tay bằng thép không gỉ rolex tông màu bạc. Cố định khung thép không gỉ màu bạc. Mặt số màu đen với logo màu bạc sáng chói của Mercedes, thanh kiếm và tay hình chữ phong cách Breguet và vạch chỉ giờ. Chữ số Ả Rập đánh dấu các vị trí 3, 6 và 9 giờ. đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu. Rolex Calibre 3132 chuyển động tự động với dự trữ năng lượng 48 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn. Kích thước vỏ: 39 mm. Oysterlock clasp. Chống nước ở 100 mét / 330 feet. Chức năng: giờ, phút, giây, đồng hồ bấm giờ. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Mục biến thể: 214270-0003. Đồng hồ đeo tay nam bằng thép không gỉ Rolex Explorer Black Dial bằng thép không gỉ 214270BKASO.\r\n', ' tissot-femini-t-mother-of-pearl-diamond-dial-ladies-watch-t1131091611601.jpg\r\n', ' tissot-femini-t-mother-of-pearl-diamond-dial-ladies-watch-t1131091611601.jpg;tissot-femini-t-mother-of-pearl-diamond-dial-ladies-watch-t1131091611601_2.jpg;tissot-femini-t-mother-of-pearl-diamond-dial-ladies-watch-t1131091611601_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0013', N'Yacht-Master Automatic Black Dial 18kt Everose Gold Black Rubber Strap Men Watch BKSRS', N'SUP002', N'CAT01', 300, 578153875, 3, 1, N'Vỏ vàng 18kt everose với dây đeo cao su màu đen. Bi-directional quay vòng thời gian vòng màu đen cerachrom vòng 18kt everose vàng. Mặt số màu đen với logo Mercedes màu vàng sáng chói, thanh kiếm và bàn tay hình chữ phong cách Breguet và dấu chấm giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Tay phát quang và đánh dấu. Hiển thị ngày ở vị trí 3 giờ. Rolex Calibre 3135 tự động chuyển động với dự trữ năng lượng 48 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Hình dạng vỏ tròn. Kích thước vỏ: 40 mm. Gấp qua kẹp hàu. Chống nước ở 100 mét / 330 feet. Chức năng: ngày, giờ, phút, giây, đồng hồ bấm giờ. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Biến thể vật phẩm: 116655-STRAP, 126655-0002. Rolex Yacht-Master Automatic Black Dial 18kt Dây đeo cao su Everose vàng đen Everose 116655BKSRS.\r\n', ' tissot-le-locle-powermatic-80-automatic-mens-watch-t0064071603300.jpg\r\n', ' tissot-le-locle-powermatic-80-automatic-mens-watch-t0064071603300.jpg;tissot-le-locle-powermatic-80-automatic-mens-watch-t0064071603300_2.jpg;tissot-le-locle-powermatic-80-automatic-mens-watch-t0064071603300_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0014', N'Datejust 41 Blue Dial Stainless Steel Men Watch', N'SUP002', N'CAT01', 450, 217705637, 0, 1, N'Vỏ thép không gỉ với vòng đeo tay bằng thép không gỉ. Cố định khung thép không gỉ. Mặt số màu xanh với các kim màu bạc sáng và vạch chỉ giờ. Đánh dấu phút xung quanh vành ngoài. Kiểu quay số: Analog. Hiển thị ngày ở vị trí 3 giờ. Rolex calibre 3235 tự động chuyển động với dự trữ năng lượng 70 giờ. Tinh thể sapphire chống trầy xước. Vít xuống vương miện. Trường hợp rắn trở lại. Kích thước vỏ: 41 mm. Hình dạng vỏ tròn. Oysterlock clasp. Chống nước ở 100 mét / 330 feet. Chức năng: ngày, giờ, phút, giây. Kiểu dáng đồng hồ sang trọng. Nhãn đồng hồ: Swiss Made. Đồng hồ Rolex Datejust 41 Đồng hồ nam bằng thép không gỉ màu xanh 126300BLSO.\r\n', ' tissot-le-locle-powermatic-80-automatic-silver-dial-men_s-watch-t0064071103300.jpg\r\n', ' tissot-le-locle-powermatic-80-automatic-silver-dial-men_s-watch-t0064071103300.jpg;tissot-le-locle-powermatic-80-automatic-silver-dial-men_s-watch-t0064071103300_2.jpg;tissot-le-locle-powermatic-80-automatic-silver-dial-men_s-watch-t0064071103300_3.jpg')
INSERT [dbo].[products] ([productID], [productName], [supplierID], [categoryID], [quantity], [unitPrice], [discount], [status], [description], [thumbnail], [image]) VALUES (N'PRO0015', N'PRO0014', N'SUP002', N'CAT01', 450, 217705637, 0, 1, N'vỏ thép không gỉ vỏi vòng deo tay bằng thép không ...', N' tissot-luxury-automatic-diamond-silver-dial-two-tone-stainless-steel-men_s-watch-t0864082203600.jpg', N' tissot-luxury-automatic-diamond-silver-dial-two-tone-stainless-steel-men_s-watch-t0864082203600.jpg;tissot-luxury-automatic-diamond-silver-dial-two-tone-stainless-steel-men_s-watch-t0864082203600_2.jpg;tissot-luxury-automatic-diamond-silver-dial-two-tone-stainless-steel-men_s-watch-t0864082203600_3.jpg')
GO
INSERT [dbo].[shippers] ([shipperID], [companyName], [phone], [description]) VALUES (N'SHIP001', N'Minh Quang', N'0377451648', N'Shipper Của công ty Minh Quang')
INSERT [dbo].[shippers] ([shipperID], [companyName], [phone], [description]) VALUES (N'SHIP002', N'trường Phát', N'0381546872', N'Shipper Của công ty trường Phát')
INSERT [dbo].[shippers] ([shipperID], [companyName], [phone], [description]) VALUES (N'SHIP003', N'Minh Quang', N'0124578620', N'Shipper Của công ty Minh Quang')
GO
INSERT [dbo].[suppliers] ([supplierID], [companyName], [address], [phone], [website]) VALUES (N'SUP001', N'Cartier', N'Paris, France', N'0334561254', N'cartier.com')
INSERT [dbo].[suppliers] ([supplierID], [companyName], [address], [phone], [website]) VALUES (N'SUP002', N'Rolex', N'Geneva, Switzerland', N'0381246597', N'Rolex.com')
INSERT [dbo].[suppliers] ([supplierID], [companyName], [address], [phone], [website]) VALUES (N'SUP003', N'Citizen', N'Tokyo, Japan', N'0345123645', N'citizen.co.jp')
INSERT [dbo].[suppliers] ([supplierID], [companyName], [address], [phone], [website]) VALUES (N'SUP004', N'Seiko', N'Minato, Tokyo, Japan', N'0314521987', N'seiko.co.jp')
INSERT [dbo].[suppliers] ([supplierID], [companyName], [address], [phone], [website]) VALUES (N'SUP005', N'Longines', N'Saint-Imier, Switzerland', N'0383939452', N'longines.com')
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderdetail_orders] FOREIGN KEY([orderID])
REFERENCES [dbo].[orders] ([orderID])
GO
ALTER TABLE [dbo].[orderdetail] CHECK CONSTRAINT [FK_orderdetail_orders]
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderdetail_products] FOREIGN KEY([productID])
REFERENCES [dbo].[products] ([productID])
GO
ALTER TABLE [dbo].[orderdetail] CHECK CONSTRAINT [FK_orderdetail_products]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_customers] FOREIGN KEY([customerID])
REFERENCES [dbo].[customers] ([customerID])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_customers]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_employees] FOREIGN KEY([employeeID])
REFERENCES [dbo].[employees] ([employeeID])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_employees]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_shippers] FOREIGN KEY([shipperID])
REFERENCES [dbo].[shippers] ([shipperID])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_shippers]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories] FOREIGN KEY([categoryID])
REFERENCES [dbo].[categories] ([categoryID])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_suppliers] FOREIGN KEY([supplierID])
REFERENCES [dbo].[suppliers] ([supplierID])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_suppliers]
GO
USE [master]
GO
ALTER DATABASE [quanlycuahangdongho] SET  READ_WRITE 
GO
