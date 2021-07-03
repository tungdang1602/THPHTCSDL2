

GO
/****** Object:  Database [Shop]    Script Date: 3/7/2021 12:19:54 PM ******/
CREATE DATABASE [Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Shop.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Shop_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shop] SET  MULTI_USER 
GO
ALTER DATABASE [Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Shop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Shop]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/7/2021 12:19:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/7/2021 12:19:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](1000) NULL,
	[icon] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Information]    Script Date: 3/7/2021 12:19:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[description] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[fax] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/7/2021 12:19:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](1000) NULL,
	[Description] [nvarchar](2000) NULL,
	[Price] [int] NULL,
	[imageLink] [nvarchar](1000) NULL,
	[CategoryID] [int] NULL,
	[SellerID] [int] NULL,
	[Amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ship]    Script Date: 3/7/2021 12:19:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[CityName] [nvarchar](1000) NOT NULL,
	[ShipPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/7/2021 12:19:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](500) NULL,
	[Password] [nvarchar](1000) NULL,
	[isSeller] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 1, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 2, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 3, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 4, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 5, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 6, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 7, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 8, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (8, 9, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (9, 2, 2)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (9, 2, 3)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (9, 2, 5)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (9, 2, 1)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (9, 3, 7)
INSERT [dbo].[Cart] ([UserID], [ProductID], [Amount]) VALUES (9, 3, 8)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (1, N'Nike', N'<i class="fa fa-caret-right"></i>')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (2, N'Adidas', N'<i class="fa fa-caret-right"></i>')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (3, N'Vans', N'<i class="fa fa-caret-right"></i>')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (4, N'Converse', N'<i class="fa fa-caret-right"></i>')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (5, N'Jordan', N'<i class="fa fa-caret-right"></i>')
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[Information] ([description], [address], [email], [phone], [fax]) VALUES (N'© 2021 Cửa hàng bán giày hàng đầu Việt Nam ', N'227 Đ. Nguyễn Văn Cừ, Phường 4, Quận 5, Thành phố Hồ Chí Minh', N'thankinhgiay@gmail.com', N'1900 1989', N'1900 1969')
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (1, N'Nike Air Zoom Pegasus 38', N'Your workhorse with wings returns.The Nike Air Zoom Pegasus 38 continues to put a spring in your step, using the same responsive foam as its predecessor', 1500000, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/5eb3f240-d722-4652-bbe0-046de40c8067/air-zoom-pegasus-38-running-shoe-D1tCt1.png', 1, 1, 15)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (2, N'Nike Waffle Oneaaa', N'Bringing a new look to the iconic Waffle franchise, the Nike Waffle One balances everything you love most about heritage Nike running with fresh innovations.', 2929000, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/33f3e354-77f9-456e-a611-3e0bce0ea4fe/waffle-one-shoe-1SFQwJ.png', 1, 1, 97)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (3, N'Nike Air Max 95 NRG', N'What''s the saying?Eat my dust?Well, how about you let them eat your style.Taking inspiration from a royal fruit, the Nike Air Max 95 NRG is made from at least 20% recycled content by weight', 5279000, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/a05e4571-8cb5-4035-a1e8-a355e5a6e1b7/air-max-95-nrg-shoe-CbGclL.png', 1, 1, 28)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (4, N'Nike Air Max 90 LX', N'Crown your feet in the Nike Air Max 90 LX.Staying true to athletic roots, it updates the streetwear icon with hits of richly textured plant material (crafted from pineapple-leaf fibre heel', 4109000, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/c089ca4a-23bb-411b-b826-7c6fd7e7d0f1/air-max-90-lx-shoe-HwCHMx.png', 1, 1, 49)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (5, N'Shoe
Air Jordan 1 Retro High OG', N'Familiar but always fresh, the iconic Air Jordan 1 is remastered for today''s sneakerhead culture', 4699000, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/4708d7ac-7468-4616-8e5e-8a7c844419a4/air-jordan-1-retro-high-og-shoe-G8hcQx.png', 5, 3, 68)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (6, N'Air Jordan 1 High OG', N'This Air Jordan 1 High OG brings back the classic from 1985. High-end leather maintains the classic look, while time-tested cushioning keeps you comfortable on the go.', 4699000, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/e773ba2c-4dc8-4c50-bd67-8afb99c61017/air-jordan-1-high-og-shoe-vJMl9C.png', 5, 3, 19)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (7, N'Jordan 1 Low Alt', N'The Jordan 1 Low Alt keeps little feet comfortable with flexible bands that feel snug and soft foam cushioning underfoot. Leather and synthetic leather have a classic look and feel', 1529000, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/d216073e-b796-4cc2-9793-c988ee0a325f/jordan-1-low-alt-younger-shoe-NpXDNW.png', 5, 3, 20)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (8, N'Air Jordan 1 Mid', N'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness', 3239000, N'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/47922912-39af-49e3-ac43-d11aac1ac7ba/air-jordan-1-mid-shoe-BpARGV.png', 5, 3, 80)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (9, N'Adidas NMD_R1', N'Xuống phố đầy nổi bật. Lấy cảm hứng từ một mẫu giày chạy bộ thập niên 80 trứ danh trong kho di sản adidas, đôi giày NMD_R1 này vừa vặn như một đôi tất với thân giày bằng vải dệt kim co giãn và nâng đỡ', 3600000, N'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/ff30fbbe33b444efbb9fad1e00d48608_9366/Giay_NMD_R1_trang_GZ7921_01_standard.jpg', 2, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (10, N'Adidas ADVANTAGE', N'Đôi giày adidas phong cách tennis này kết hợp diện mạo kinh điển với thiết kế hiện đại thoải mái. Kiểu dáng mềm mại mà vừa khít, ôm chân tự nhiên. Tự tin sải bước với độ bám chắc chắn trên mọi bề mặt.', 1800000, N'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/88331a67fe254b098098acc201155c95_9366/Giay_Advantage_trang_GZ5299_01_standard.jpg', 2, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (11, N'Adidas ULTRABOOST 5.0 DNA', N'Một huyền thoại trẻ. Khi phiên bản thứ năm của adidas Ultraboost ra mắt năm 2019, họa tiết dệt adidas Primeknit đã mang tới một hình hài mới mẻ cho dòng giày này.', 4500000, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbjdOHVFd4heKPgVC5kTWUsOfCmBijzldKdw&usqp=CAU', 2, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (12, N'Converse x Keith Haring Run Star Hike High-Top', N'Vẻ ngoài cổ điển. Chất màu đơn giản cùng phần đế tiệp màu, "ton-sur-ton" với upper. Basas "Mono" Pack hứa hẹn sẽ là một điểm nhấn đầy thú vị cho tủ giày của bạn.', 2500000, N'https://www.converse.com.vn/pictures/catalog/products/sneakers/2021/ctas/171859v/171859Cstandard.jpg', 4, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (13, N'onverse x Keith Haring Chuck 70 High-Top', N'Vẻ ngoài cổ điển. Chất màu đơn giản cùng phần đế tiệp màu, "ton-sur-ton" với upper. Basas "Mono" Pack hứa hẹn sẽ là một điểm nhấn đầy thú vị cho tủ giày của bạn.', 2500000, N'https://www.converse.com.vn/pictures/catalog/products/sneakers/2021/ctas/171860c/171860Cshot3.jpg', 4, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (14, N'Converse x Keith Haring Chuck Taylor All ', N'Bringing a new look to the iconic Waffle franchise, the Nike Waffle One balances everything you love most about heritage Nike running with fresh innovations.', 2500000, N'https://www.converse.com.vn/pictures/catalog/products/sneakers/2021/ctas/171860c/171860Cshot3.jpg', 4, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (15, N'Vans UA Old Skool Style 36 SE Bikes ', N'Kỷ niệm những năm tháng đồng hành cùng các BMX Riders trên những chặng đua đầy thử thách, Vans x SE Bikes đã hợp tác để cho ra mắt những mẫu giày dành cho bộ môn đua xe đạp địa hình. Thiết kế mang đậm tính thể thao đường phố với tên của các dòng xe đạp biểu tượng ở midsole, kết hợp cùng kết cấu tiện nghi, linh hoạt nhất, mẫu giày hứa hẹn sẽ đáp ứng được những yêu cầu khắt khe trong vận động để bạn hết mình cho một ngày dài đầy thử thách.', 2070000, N'https://images.vans.com/is/image/VansEU/VN0A54F64Y7-HERO?$PDP-FULL-IMAGE$', 3, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (16, N'Vans UA Old Skool Style 36 SE Bikes ', N'Kỷ niệm những năm tháng đồng hành cùng các BMX Riders trên những chặng đua đầy thử thách, Vans x SE Bikes đã hợp tác để cho ra mắt những mẫu giày dành cho bộ môn đua xe đạp địa hình. Thiết kế mang đậm tính thể thao đường phố với tên của các dòng xe đạp biểu tượng ở midsole, kết hợp cùng kết cấu tiện nghi, linh hoạt nhất, mẫu giày hứa hẹn sẽ đáp ứng được những yêu cầu khắt khe trong vận động để bạn hết mình cho một ngày dài đầy thử thách.', 2070000, N'https://cf.shopee.vn/file/e35a62d85fcd38efc0f9666b111f3080_tn', 3, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (17, N'Vans Old Skool', N'Kỷ niệm những năm tháng đồng hành cùng các BMX Riders trên những chặng đua đầy thử thách, Vans x SE Bikes đã hợp tác để cho ra mắt những mẫu giày dành cho bộ môn đua xe đạp địa hình. Thiết kế mang đậm tính thể thao đường phố với tên của các dòng xe đạp biểu tượng ở midsole, kết hợp cùng kết cấu tiện nghi, linh hoạt nhất, mẫu giày hứa hẹn sẽ đáp ứng được những yêu cầu khắt khe trong vận động để bạn hết mình cho một ngày dài đầy thử thách.', 2100000, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/373/032/products/vans-old-skool-black-white-ship-us.jpg?v=1601636632237', 3, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (18, N'Vans Authentic 44 Dx', N'Kỷ niệm những năm tháng đồng hành cùng các BMX Riders trên những chặng đua đầy thử thách, Vans x SE Bikes đã hợp tác để cho ra mắt những mẫu giày dành cho bộ môn đua xe đạp địa hình. Thiết kế mang đậm tính thể thao đường phố với tên của các dòng xe đạp biểu tượng ở midsole, kết hợp cùng kết cấu tiện nghi, linh hoạt nhất, mẫu giày hứa hẹn sẽ đáp ứng được những yêu cầu khắt khe trong vận động để bạn hết mình cho một ngày dài đầy thử thách.', 2400000, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a38enmr4-6.png', 3, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (19, N'Vans SK-8', N'Kỷ niệm những năm tháng đồng hành cùng các BMX Riders trên những chặng đua đầy thử thách, Vans x SE Bikes đã hợp tác để cho ra mắt những mẫu giày dành cho bộ môn đua xe đạp địa hình. Thiết kế mang đậm tính thể thao đường phố với tên của các dòng xe đạp biểu tượng ở midsole, kết hợp cùng kết cấu tiện nghi, linh hoạt nhất, mẫu giày hứa hẹn sẽ đáp ứng được những yêu cầu khắt khe trong vận động để bạn hết mình cho một ngày dài đầy thử thách.', 2500000, N'https://www.efootwear.eu/media/catalog/product/cache/image/650x650/0/0/0000197850167-vans-sk8-hi_d5ib8c_black_black_white-ap-001.jpg', 3, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (20, N'Vans Old Skool Flame Black and White', N'Kỷ niệm những năm tháng đồng hành cùng các BMX Riders trên những chặng đua đầy thử thách, Vans x SE Bikes đã hợp tác để cho ra mắt những mẫu giày dành cho bộ môn đua xe đạp địa hình. Thiết kế mang đậm tính thể thao đường phố với tên của các dòng xe đạp biểu tượng ở midsole, kết hợp cùng kết cấu tiện nghi, linh hoạt nhất, mẫu giày hứa hẹn sẽ đáp ứng được những yêu cầu khắt khe trong vận động để bạn hết mình cho một ngày dài đầy thử thách.', 3000000, N'https://scene7.zumiez.com/is/image/zumiez/product_main_medium/Vans-Old-Skool-Flame-Black-%26-White-Skate-Shoes-_279736-alt7-US.jpg', 3, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (21, N'Vans Old Skool Platform Skate Shoes in Black', N'Kỷ niệm những năm tháng đồng hành cùng các BMX Riders trên những chặng đua đầy thử thách, Vans x SE Bikes đã hợp tác để cho ra mắt những mẫu giày dành cho bộ môn đua xe đạp địa hình. Thiết kế mang đậm tính thể thao đường phố với tên của các dòng xe đạp biểu tượng ở midsole, kết hợp cùng kết cấu tiện nghi, linh hoạt nhất, mẫu giày hứa hẹn sẽ đáp ứng được những yêu cầu khắt khe trong vận động để bạn hết mình cho một ngày dài đầy thử thách.', 3100000, N'https://images.journeys.com/images/products/1_466445_ZM_ALT5.JPG', 3, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (22, N'Vans Old Skool', N'Kỷ niệm những năm tháng đồng hành cùng các BMX Riders trên những chặng đua đầy thử thách, Vans x SE Bikes đã hợp tác để cho ra mắt những mẫu giày dành cho bộ môn đua xe đạp địa hình. Thiết kế mang đậm tính thể thao đường phố với tên của các dòng xe đạp biểu tượng ở midsole, kết hợp cùng kết cấu tiện nghi, linh hoạt nhất, mẫu giày hứa hẹn sẽ đáp ứng được những yêu cầu khắt khe trong vận động để bạn hết mình cho một ngày dài đầy thử thách.', 2690000, N'https://images.vans.com/is/image/Vans/8G1R1Q-HERO?$583x583$', 3, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (23, N'Adidas NMD', N'Đôi giày adidas phong cách tennis này kết hợp diện mạo kinh điển với thiết kế hiện đại thoải mái. Kiểu dáng mềm mại mà vừa khít, ôm chân tự nhiên. Tự tin sải bước với độ bám chắc chắn trên mọi bề mặt.', 2600000, N'https://giayadidas.com.vn/wp-content/uploads/2018/11/adidas-chinh-hang-ha-noi_3-870x580.jpg', 2, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (24, N'Adidas UltraBoost', N'Đôi giày adidas phong cách tennis này kết hợp diện mạo kinh điển với thiết kế hiện đại thoải mái. Kiểu dáng mềm mại mà vừa khít, ôm chân tự nhiên. Tự tin sải bước với độ bám chắc chắn trên mọi bề mặt.', 2600000, N'https://myshoes.vn/image/data/product12/8.7.18/giay-adidas-ultra-boost-4.0-nam-xam-06%20copy.jpg', 2, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (25, N'Adidas Sleek', N'Đôi giày adidas phong cách tennis này kết hợp diện mạo kinh điển với thiết kế hiện đại thoải mái. Kiểu dáng mềm mại mà vừa khít, ôm chân tự nhiên. Tự tin sải bước với độ bám chắc chắn trên mọi bề mặt.', 2600000, N'https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/4107a4cb83984656bef2a9b90123f743_9366/gi%C3%A0y-adidas-sleek.jpg', 2, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (26, N'Adidas UltraBoost Custom', N'Đôi giày adidas phong cách tennis này kết hợp diện mạo kinh điển với thiết kế hiện đại thoải mái. Kiểu dáng mềm mại mà vừa khít, ôm chân tự nhiên. Tự tin sải bước với độ bám chắc chắn trên mọi bề mặt.', 2690000, N'https://www.cnet.com/a/img/pXLdxVq7E1Jbllkb6HgpSb8wyPo=/247x56:1344x927/940x0/2021/04/08/54509edc-39cb-4d3e-a049-5ce2def00718/lego-adidas.png', 2, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (27, N' Nike Air Force 1 Shadow', N'Crown your feet in the Nike Air Max 90 LX.Staying true to athletic roots, it updates the streetwear icon with hits of richly textured plant material (crafted from pineapple-leaf fibre heel', 4989000, N'https://xachtayonline-vn.s3.ap-southeast-1.amazonaws.com/product_images/1575882727ap3on-giay-thoi-trang-nu-nike-af1-ci0919-101-1.jpg', 1, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (28, N'Nike Cortez', N'Crown your feet in the Nike Air Max 90 LX.Staying true to athletic roots, it updates the streetwear icon with hits of richly textured plant material (crafted from pineapple-leaf fibre heel', 4989000, N'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/c6081451-e5e6-44a2-a4f4-21558717782f/classic-cortez-womens-shoe-dF908F.jpg', 1, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (29, N'Nike Air Force 1 - Para-Noise', N'Crown your feet in the Nike Air Max 90 LX.Staying true to athletic roots, it updates the streetwear icon with hits of richly textured plant material (crafted from pineapple-leaf fibre heel', 7999000, N'https://ordixi.com/wp-content/uploads/2019/11/nhung-hinh-anh-giay-hoa-cuc-moi-nhat-cua-g-dragon-peaceminusone-x-nike-air-force-1-para-noise09.jpg', 1, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (75, N'Nike Blazer Mid ''77 Vintage', N'Crown your feet in the Nike Air Max 90 LX.Staying true to athletic roots, it updates the streetwear icon with hits of richly textured plant material (crafted from pineapple-leaf fibre heel', 3000000, N'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6eea83ac-7862-459e-abf5-2f566e2f0ac1/blazer-mid-77-vintage-mens-shoe-nw30B2.png', 1, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (76, N'Converse Chuck Taylor All Star 1970', N'Vẻ ngoài cổ điển. Chất màu đơn giản cùng phần đế tiệp màu, "ton-sur-ton" với upper. Basas "Mono" Pack hứa hẹn sẽ là một điểm nhấn đầy thú vị cho tủ giày của bạn.', 4000000, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/162056-5.png', 4, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (77, N'Converse Chuck Taylor All Star 1970 Black', N'Vẻ ngoài cổ điển. Chất màu đơn giản cùng phần đế tiệp màu, "ton-sur-ton" với upper. Basas "Mono" Pack hứa hẹn sẽ là một điểm nhấn đầy thú vị cho tủ giày của bạn.', 4000000, N'https://cdn.shopify.com/s/files/1/0491/1471/0168/products/azk1121_1_9_1800x.jpg?v=1616766697', 4, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (78, N'Converse Chuck 70 Yellow Flame', N'Vẻ ngoài cổ điển. Chất màu đơn giản cùng phần đế tiệp màu, "ton-sur-ton" với upper. Basas "Mono" Pack hứa hẹn sẽ là một điểm nhấn đầy thú vị cho tủ giày của bạn.', 5000000, N'https://static.highsnobiety.com/thumbor/hFQ_kGLdCkwUP0NIuM58nbfOFt0=/1600x1067/static.highsnobiety.com/wp-content/uploads/2021/06/29180120/golf-le-fleur-converse-chuck-70-yellow-flame-release-date-price-06.jpg', 4, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (79, N'Nike Air Jordan 1 Retro High Dior', N'This Air Jordan 1 High OG brings back the classic from 1985. High-end leather maintains the classic look, while time-tested cushioning keeps you comfortable on the go.', 130000000, N'https://shopgiayreplica.com/wp-content/uploads/2020/03/giay-nike-air-jordan-1-dior-replica.jpg', 5, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (80, N'Nike Air Jordan 1 Retro High OG Dark Mocha', N'This Air Jordan 1 High OG brings back the classic from 1985. High-end leather maintains the classic look, while time-tested cushioning keeps you comfortable on the go.', 20000000, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/336/177/products/1-cd2e20f6-958e-488e-ad1a-0fe3606c1905.jpg?v=1605764731040', 5, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (81, N'Nike Air Jordan 1 UNC Off White Blue', N'This Air Jordan 1 High OG brings back the classic from 1985. High-end leather maintains the classic look, while time-tested cushioning keeps you comfortable on the go.', 80000000, N'https://swagger.com.vn/wp-content/uploads/2020/04/nike-jordan-1-off-white-blue.jpg', 5, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (82, N'Jordan 4 Retro Bred', N'This Air Jordan 1 High OG brings back the classic from 1985. High-end leather maintains the classic look, while time-tested cushioning keeps you comfortable on the go.', 4000000, N'https://rubystore.com.vn/wp-content/uploads/2020/11/giay-air-jordan-4-retro-bred-sieu-cap.jpg', 5, 1, 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [imageLink], [CategoryID], [SellerID], [Amount]) VALUES (83, N'Jordan 4 Retro Union Off Noir', N'This Air Jordan 1 High OG brings back the classic from 1985. High-end leather maintains the classic look, while time-tested cushioning keeps you comfortable on the go.', 9000000, N'https://rubystore.com.vn/wp-content/uploads/2020/11/giay-air-jordan-4-retro-union-off-noir-sieu-cap.jpg', 5, 1, 100)
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[Ship] ([CityName], [ShipPrice]) VALUES (N'Biên Hòa', 120000)
INSERT [dbo].[Ship] ([CityName], [ShipPrice]) VALUES (N'Cần Thơ', 80000)
INSERT [dbo].[Ship] ([CityName], [ShipPrice]) VALUES (N'Đà Nẵng', 70000)
INSERT [dbo].[Ship] ([CityName], [ShipPrice]) VALUES (N'Hà Nội', 20000)
INSERT [dbo].[Ship] ([CityName], [ShipPrice]) VALUES (N'Hải Phòng', 40000)
INSERT [dbo].[Ship] ([CityName], [ShipPrice]) VALUES (N'Nha Trang', 90000)
INSERT [dbo].[Ship] ([CityName], [ShipPrice]) VALUES (N'TP Hồ Chí Minh', 100000)
INSERT [dbo].[Ship] ([CityName], [ShipPrice]) VALUES (N'Việt Trì', 10000)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (1, N'tung', N'123', 1, 1)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (2, N'son', N'123', 1, 1)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (3, N'trung', N'123', 1, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (4, N'thanh', N'123', 1, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (5, N'dang', N'123', 1, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (6, N'bui', N'123', 1, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (8, N'van', N'123', 0, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (9, N'pham', N'123', 0, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (10, N'quang', N'123', 0, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (11, N'duc', N'123', 0, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (12, N'do', N'123', 0, 0)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [isSeller], [isAdmin]) VALUES (13, N'adam', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [productID_in_product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [productID_in_product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [userID_in_user] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [userID_in_user]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [product_in_category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [product_in_category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [SellerID_in_Users] FOREIGN KEY([SellerID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [SellerID_in_Users]
GO
USE [master]
GO
ALTER DATABASE [Shop] SET  READ_WRITE 
GO
