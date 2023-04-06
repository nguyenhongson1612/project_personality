USE [PRJ301_SE1650]
GO

ALTER DATABASE [PRJ301_SE1650] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SE1650] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SE1650] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SE1650] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1650] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1650] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SE1650] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SE1650] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SE1650] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SE1650] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SE1650] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SE1650] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301_SE1650] SET QUERY_STORE = OFF
GO
USE [PRJ301_SE1650]
GO
/****** Object:  Table [dbo].[Account_HE164042]    Script Date: 11/10/2022 8:39:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE164042](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_Account_HE164042] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_HE164042]    Script Date: 11/10/2022 8:39:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_HE164042](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category_HE164042] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_HE164042]    Script Date: 11/10/2022 8:39:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_HE164042](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[total_money] [money] NOT NULL,
 CONSTRAINT [PK_Order_HE164042] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail_HE164042]    Script Date: 11/10/2022 8:39:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail_HE164042](
	[oid] [int] NOT NULL,
	[pid] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_HE164042]    Script Date: 11/10/2022 8:39:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_HE164042](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NOT NULL,
	[releaseDate] [date] NOT NULL,
	[describe] [nvarchar](1000) NOT NULL,
	[image] [nvarchar](100) NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK_Product_HE164042] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_HE164042]    Script Date: 11/10/2022 8:39:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_HE164042](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](10) NOT NULL,
	[address] [nvarchar](1000) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User_HE164042] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account_HE164042] ON 
GO
INSERT [dbo].[Account_HE164042] ([id], [username], [password], [role]) VALUES (1, N'sa', N'123', 1)
GO
INSERT [dbo].[Account_HE164042] ([id], [username], [password], [role]) VALUES (3, N'nhs', N'123', 1)
GO
INSERT [dbo].[Account_HE164042] ([id], [username], [password], [role]) VALUES (4, N'naq', N'123', 2)
GO
INSERT [dbo].[Account_HE164042] ([id], [username], [password], [role]) VALUES (7, N'thp', N'123', 2)
GO
SET IDENTITY_INSERT [dbo].[Account_HE164042] OFF
GO
SET IDENTITY_INSERT [dbo].[Category_HE164042] ON 
GO
INSERT [dbo].[Category_HE164042] ([id], [name]) VALUES (1, N'Áo')
GO
INSERT [dbo].[Category_HE164042] ([id], [name]) VALUES (2, N'Quần dài')
GO
INSERT [dbo].[Category_HE164042] ([id], [name]) VALUES (3, N'Chân váy')
GO
INSERT [dbo].[Category_HE164042] ([id], [name]) VALUES (4, N'Đồ lót')
GO
INSERT [dbo].[Category_HE164042] ([id], [name]) VALUES (5, N'Đồ mặc nhà')
GO
INSERT [dbo].[Category_HE164042] ([id], [name]) VALUES (6, N'Phụ kiện')
GO
SET IDENTITY_INSERT [dbo].[Category_HE164042] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_HE164042] ON 
GO
INSERT [dbo].[Order_HE164042] ([id], [aid], [date], [total_money]) VALUES (1, 3, CAST(N'2022-10-27' AS Date), 1000.0000)
GO
SET IDENTITY_INSERT [dbo].[Order_HE164042] OFF
GO
INSERT [dbo].[OrderDetail_HE164042] ([oid], [pid], [quantity]) VALUES (1, N'QD001', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT001', N'Áo Sơ Mi Chui Đầu Lông Cừu Cổ Tròn Dài Tay', 111, 980.0000, CAST(N'2020-10-21' AS Date), N'Vải lông cừu mịn, thoải mái và ấm áp trong kiểu dáng ngắn phù hợp với mọi đối tượng.', N'images/vngoods_54_452618.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT002', N'Áo Thun Gân Cổ Cao Dài Tay', 111, 295.0000, CAST(N'2020-10-21' AS Date), N'Vải gân cho một kiểu dáng đẹp vừa vặn. Độ dày vừa phải để có thể mặc riêng lẻ.', N'images/vngoods_17_449880.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT003', N'Áo Thun Kẻ Sọc Dài Tay', 105, 499.0000, CAST(N'2020-10-23' AS Date), N'Áo thun sọc 100% cotton với đường cắt hình hộp tạo vẻ ngoài giản dị.', N'images/vngoods_69_449874.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT004', N'Áo Thun Waffle Cổ Tròn Dài Tay', 100, 391.0000, CAST(N'2020-10-23' AS Date), N'Hiện tại áo đã có ở dạng dệt kim waffle mịn hơn. Một chiếc áo thun linh hoạt cho bất kỳ trang phục nào.', N'images/vngoods_11_449860.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT005', N'Áo Thun Gân Kẻ Sọc Cổ Tròn Tay Lỡ', 100, 293.0000, CAST(N'2020-10-27' AS Date), N'Vải gân cho cảm giác vừa vặn. Áo dày có thể mặc riêng lẻ.', N'images/goods_69_453272.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT006', N'Áo Thun Cotton Dáng Rộng Kẻ Sọc Ngắn Tay', 100, 244.0000, CAST(N'2020-10-27' AS Date), N'Chất liệu vải mềm mại và đường cắt rộng. Sản phẩm hoàn hảo để tạo kiểu thoải mái.', N'images/goods_00_452954.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT007', N'Áo Ba Lỗ Gân Dáng Ngắn Cổ Henley', 100, 244.0000, CAST(N'2020-10-27' AS Date), N'Thiết kế cổ áo Henley đa năng với vải gân tạo cảm giác vừa vặn thoải mái.', N'images/vngoods_01_449492.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT008', N'AIRism Áo Thun Cổ Tròn Ngắn Tay', 100, 391.0000, CAST(N'2020-10-27' AS Date), N'Chất liệu AIRism co giãn với các tấm lưới để tăng khả năng thoáng khí.', N'images/vngoods_72_444525.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'AT009', N'Áo Polo Ngắn Tay', 100, 293.0000, CAST(N'2020-10-27' AS Date), N'Boxy cut and a colorful collar for a signature JWA style.', N'images/goods_15_447544001.webp', 1)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV001', N'Chân Váy Dài Gân 3D Knit', 111, 980.0000, CAST(N'2020-10-23' AS Date), N'3D knit in stretch yarn for even greater comfort. Special ribbed knit creates a stunning silhouette.', N'images/vngoods_57_452647.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV002', N'Chân Váy Maxi Xòe', 111, 980.0000, CAST(N'2020-10-23' AS Date), N'Chân váy denim nhẹ với đường cắt loe xinh xắn. Thiết kế đơn giản phù hợp với bất kỳ phong cách nào.', N'images/vngoods_09_452644.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV003', N'Chân Váy Dáng Xòe', 100, 980.0000, CAST(N'2020-10-23' AS Date), N'Chân váy xòe với thiết kế bất đối xứng tạo nên phong cách đặc trưng của JW Anderson.', N'images/vngoods_65_451565.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV004', N'Chân Váy Xếp Ly Dáng Ôm', 100, 980.0000, CAST(N'2020-10-23' AS Date), N'Thiết kế xếp ly vừa phải và dáng ôm giúp đôi chân của bạn trông thon gọn và thanh lịch. Các nếp gấp giúp bạn mặc váy dễ dàng.', N'images/vngoods_03_454559.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV005', N'Chân Váy Mini Vải Nhung', 100, 686.0000, CAST(N'2020-10-27' AS Date), N'Chân váy kiểu cách này tạo thêm nét tinh tế cho bộ trang phục đơn giản. Ấm áp và dễ chịu bằng vải nhung.', N'images/vngoods_59_453042.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV006', N'Chân Váy Len Pha Dáng Ôm', 100, 588.0000, CAST(N'2020-10-27' AS Date), N'Kết cấu trang nhã, ấm áp và dáng chữ A hấp dẫn.', N'images/vngoods_38_439490.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV007', N'Chây Váy Co Giãn', 100, 784.0000, CAST(N'2020-10-27' AS Date), N'Kết hợp một thiết kế thời trang và sự dễ dàng di chuyển. Mang lại cảm giác thanh lịch và cao cấp.', N'images/vngoods_05_429145.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV008', N'Quần Váy Mini Xếp Ly', 100, 686.0000, CAST(N'2020-10-27' AS Date), N'Quần váy cổ điển đã cập nhật kiểu dáng thể thao. Cạp chun co giãn để tạo sự thoải mái, kiểu dáng đẹp.
', N'images/goods_55_457961.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'CV009', N'Chân Váy Mini Vải Pha Len', 100, 686.0000, CAST(N'2020-10-27' AS Date), N'
(
1
)
Chất liệu vải ấm áp mang lại cảm giác cao cấp. Họa tiết caro lớn cho một cái nhìn phong cách.', N'images/vngoods_58_455780.webp', 3)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL001', N'Áo Ngực Không Gọng (Vải Mắt Lưới)', 100, 489.0000, CAST(N'2020-10-23' AS Date), N'Designed for elegance and comfort, with intricate details and superior fabrics.', N'images/vngoods_02_450657.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL002', N'Áo Ngực Không Gọng (Xẻ Ngực)', 100, 489.0000, CAST(N'2020-10-23' AS Date), N'Designed for elegance in every detail.', N'images/vngoods_47_450446.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL003', N'Áo Ngực Không Gọng Thể Thao Cổ Vuông', 100, 489.0000, CAST(N'2020-10-23' AS Date), N'Thiết kế dài hơn và một đường viền cổ vuông phẳng. Áo ngực thoải mái và thoáng khí của chúng tôi.', N'images/vngoods_09_450444.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL004', N'Áo Ngực Không Gọng (Ultra Relax)', 100, 489.0000, CAST(N'2020-10-23' AS Date), N'Được thiết kế cho một cảm giác thư giãn. Hãy nói lời tạm biệt với những chiếc áo ngực không thoải mái.', N'images/vngoods_53_450442.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL005', N'Áo Ngực Không Gọng (3D Hold)', 100, 489.0000, CAST(N'2020-10-26' AS Date), N'Sản phẩm hỗ trợ cấu trúc 3D giúp tôn dáng và vừa vặn thoải mái với cơ thể.', N'images/vngoods_12_438961.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL006', N'Quần Easy Short', 100, 784.0000, CAST(N'2022-10-26' AS Date), N'A bra slip with made attention to detail for an elegant look. AIRism for a comfortable feel on your skin.', N'images/vngoods_34_456051.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL007', N'Áo Bra Dáng Ngắn Không Tay', 100, 489.0000, CAST(N'2022-10-26' AS Date), N'Chất liệu vải và thiết kế thời trang. Dáng ngắn mang đến một phong cách năng động.', N'images/vngoods_35_447313.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL008', N'AIRism Áo Bra Không Tay', 100, 489.0000, CAST(N'2022-10-26' AS Date), N'Áo mềm mịn thoải mái. Quá thoải mái, bạn sẽ không bao giờ muốn cởi áo ra.', N'images/vngoods_61_445259.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL009', N'AIRism Áo Bra Hai Dây', 100, 489.0000, CAST(N'2022-10-26' AS Date), N'Áo ngực với thiết kế được cải tiến để mang đến sự vừa vặn thoải mái hơn và tôn lên vóc dáng của bạn.', N'images/vngoods_00_445257.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DL010', N'AIRism Quần Short Biker Mềm', 100, 489.0000, CAST(N'2022-10-26' AS Date), N'Có thể mặc phù hợp dành cho người đi xe đạp với chiều dài trên đầu gối để có vẻ ngoài tinh giản. Cảm giác êm ái, dễ chịu.', N'images/vngoods_67_451377.webp', 4)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN001', N'Disney Bộ Pyjama Dài Tay', 100, 980.0000, CAST(N'2020-10-23' AS Date), N'Bộ pyjama có hoa văn Disney lấy cảm hứng từ khu rừng mùa thu!', N'images/vngoods_58_453879.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN002', N'Disney Bộ Pyjama Dài Tay', 100, 980.0000, CAST(N'2020-10-23' AS Date), N'Bộ pyjama có hoa văn Disney lấy cảm hứng từ khu rừng mùa thu!', N'images/vngoods_69_453878.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN003', N'HEATTECH Quần Leggings Wool Pha Ống Xẻ Tà', 100, 489.0000, CAST(N'2020-10-23' AS Date), N'Flared leggings in our wonderfully smooth, thin yet warm HEATTECH Wool Blend.', N'images/vngoods_08_453820.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN004', N'AIRism Coton Bộ Pyjama Ngắn Tay', 100, 784.0000, CAST(N'2020-10-23' AS Date), N'Bộ đồ pyjama AIRism với cảm giác mềm mịn, thoải mái. Một thiết kế cơ bản, đa năng.', N'images/vngoods_70_453646.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN005', N'Disney Bộ Mặc Nhà Vải Lông Cừu Ngắn Tay', 100, 980.0000, CAST(N'2022-10-26' AS Date), N'A collection of Disney Characters who are peacefully falling asleep while wishing upon the stars.', N'images/vngoods_10_455986.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN006', N'Quần Short Dệt 3D Gân Vải Souffle Yarn', 100, 784.0000, CAST(N'2022-10-26' AS Date), N'
Warmth and style in equal measure. Perfect for layering or lounging.', N'images/vngoods_36_455096.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN007', N'Quần RELACO Shorts', 100, 244.0000, CAST(N'2022-10-26' AS Date), N'
Mềm, nhẹ và thoải mái. Thư giãn trong sự mát mẻ, 100% vải rayon.', N'images/vngoods_31_454759.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN008', N'Quần Dạ', 100, 489.0000, CAST(N'2022-10-26' AS Date), N'
Quần dạ 100% cotton mềm mại, ấm áp. Có thể mặc ở nhà hoặc đi chơi.', N'images/vngoods_17_453621.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN009', N'Bộ Mặc Nhà Siêu Co Giãn Dài Tay', 100, 784.0000, CAST(N'2022-10-26' AS Date), N'
Độ co giãn tuyệt vời để thư giãn hoàn toàn. Áo và quần rất dễ phối đồ cho một phong cách linh hoạt.', N'images/vngoods_61_453035.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'DN010', N'AIRism Cotton Quần Short Easy', 100, 391.0000, CAST(N'2022-10-26' AS Date), N'
Quần short AIRism với chất liệu mềm mịn đặc biệt, tạo cảm giác sảng khoái. Quần short tiện dụng tuyệt vời cho những chuyến đi chơi ngắn ngày.', N'images/vngoods_57_452998.webp', 5)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK001', N'HEATTCH Mũ', 100, 244.0000, CAST(N'2020-10-23' AS Date), N'Xua tan thời tiết lạnh với HEATTECH ấm áp. Kiểu đan cao cấp đa năng rất dễ để phối đồ.', N'images/goods_03_451523.jpg', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK002', N'Mũ Nhung Chống Tia UV', 100, 489.0000, CAST(N'2020-10-23' AS Date), N'Tạo sự ấm áp, vải nhung dày dặn. Với công nghệ chống tia UV. UPF50 +.', N'images/goods_09_451503.webp', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK003', N'Mũ Melton Metro Chống UV', 100, 489.0000, CAST(N'2020-10-23' AS Date), N'Mũ thời trang, ấm áp này có tính năng chống tia UV. UPF50 +', N'images/goods_07_451502.webp', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK004', N'Mũ Bucket', 100, 489.0000, CAST(N'2020-10-23' AS Date), N'Một chiếc mũ bucket cổ điển được trang bị các tính năng thoải mái.', N'images/goods_33_441005.webp', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK005', N'Găng Tay Cổ Tay Giả Lông Cừu', 100, 489.0000, CAST(N'2022-10-26' AS Date), N'
Chất liệu vải giả lông cừu cao cấp. Kiểu dáng thon gọn đến tận đầu ngón tay.', N'images/goods_07_452413.webp', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK006', N'HEATTECH Khăn Choàng Giữ Ấm Cổ Giả Lông Cừu', 100, 391.0000, CAST(N'2022-10-26' AS Date), N'
Lớp đệm ấm và sản phẩm HEATTECH này giúp chống gió. Khăn choàng cổ thoải mái này là một sự lựa chọn hoàn hảo.', N'images/goods_09_451592.webp', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK007', N'HEATTECH Khăn Giữ Ấm Đa Năng', 100, 391.0000, CAST(N'2022-10-26' AS Date), N'
Đã được cập nhật độ co giãn để tạo cảm giác vừa vặn, thoải mái hơn.', N'images/goods_03_451525.webp', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK008', N'HEATTECH Găng Tay', 100, 489.0000, CAST(N'2022-10-26' AS Date), N'
Găng tay HEATTECH ấm áp của chúng tôi xua tan đi thời tiết lạnh giá. Giờ đây cảm ứng vân tay trên sản phẩm đã nhạy cảm hơn.', N'images/goods_06_451519.jpg', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK009', N'Khăn Dệt Kim', 100, 784.0000, CAST(N'2022-10-26' AS Date), N'
Kiểu đan chunky đặc biệt. Chất liệu vải được pha trộn của các loại vải để tạo cảm giác thoáng mát.', N'images/goods_08_452870.webp', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'PK010', N'AIRism Găng Tay Chống UV', 100, 244.0000, CAST(N'2022-10-26' AS Date), N'
Chất liệu AIRism êm ái và thoải mái. Sản phẩm hoàn hảo để bảo vệ tia UV khi di chuyển.', N'images/goods_02_452985.webp', 6)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD001', N'Quần Jeans Ống Cong', 100, 789.0000, CAST(N'2020-10-23' AS Date), N'Vải mềm mại, cảm giác thoải mái. Hình dáng đẹp mắt giúp tôn dáng cho đôi chân.', N'images/vngoods_30_456454.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD002', N'Quần Jean Siêu Co Giãn Dáng Skinny', 100, 980.0000, CAST(N'2020-10-23' AS Date), N'
(
5
)
Incredible stretch for a comfortable fit. High waist lends a flattering effect.', N'images/vngoods_64_453323001.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD003', N'Quần Jeans Skinny Siêu Co Giãn Cạp Cao', 100, 980.0000, CAST(N'2020-10-23' AS Date), N'Đã cập nhật thành thiết kế cạp cao để vừa vặn hơn.', N'images/vngoods_66_439218.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD004', N'Quần Jeans Skinny Siêu Co Giãn Cạp Cao', 111, 980.0000, CAST(N'2020-10-23' AS Date), N'Đã cập nhật thành thiết kế cạp cao để vừa vặn hơn.', N'images/vngoods_69_439217.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD005', N'Quần Jean Ống Loe Dáng Slim Fit', 100, 784.0000, CAST(N'2022-10-26' AS Date), N'
Kiểu dáng đẹp, dáng ôm với đường viền loe tinh tế. Quần jean thoải mái với tác dụng tôn lên đôi chân.', N'images/vngoods_69_453409.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD006', N'Quần Boyfriend Ống Ôm Dần', 100, 980.0000, CAST(N'2022-10-26' AS Date), N'
Quần jean ống ôm dần với kiểu dáng denim cổ điển. Hoàn hảo cho một phong cách thoải mái.', N'images/vngoods_63_455375.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD007', N'Quần Jean Lửng Dáng Rộng', 100, 980.0000, CAST(N'2022-10-26' AS Date), N'Quần jean dài đến mắt cá chân với kiểu dáng rộng.', N'images/vngoods_64_452996.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD008', N'NỮ QUẦN JEANS', 100, 2453.0000, CAST(N'2022-10-26' AS Date), N'Superb stretch for a flattering fit. Stylish design with subtle stitching.', N'images/vngoods_69_451218.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD009', N'Quần Jean Lửng Dáng Rộng (Damaged)', 100, 980.0000, CAST(N'2022-10-26' AS Date), N'Quần jean lửng ống rộng vừa vặn. Thiết kế cá tính nhưng vẫn thoải mái.', N'images/vngoods_66_448429.webp', 2)
GO
INSERT [dbo].[Product_HE164042] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'QD010', N'Quần Jeans Skinny Siêu Co Giãn Cạp Cao', 100, 980.0000, CAST(N'2022-10-26' AS Date), N'Đã cập nhật thành thiết kế cạp cao để vừa vặn hơn.', N'images/goods_69_439217.webp', 2)
GO
INSERT [dbo].[User_HE164042] ([id], [name], [phone], [address], [email]) VALUES (1, N'Nguyễn Hồng Sơn', N'0367447542', N'Vĩnh Phúc', N'nhs@gmail.com')
GO
INSERT [dbo].[User_HE164042] ([id], [name], [phone], [address], [email]) VALUES (3, N'bao dan', N'0123456789', N'nghe an', N'nhs1@gmail.com')
GO
INSERT [dbo].[User_HE164042] ([id], [name], [phone], [address], [email]) VALUES (4, N'Nguyễn Anh Quân', N'0123456789', N'Nghệ An', N'naq@gmail.com')
GO
INSERT [dbo].[User_HE164042] ([id], [name], [phone], [address], [email]) VALUES (7, N'bao dan', N'0123456789', N'ha nam', N'nguyenhongson1612@gmail.com')
GO
ALTER TABLE [dbo].[Order_HE164042]  WITH CHECK ADD  CONSTRAINT [FK_Order_HE164042_Account_HE164042] FOREIGN KEY([aid])
REFERENCES [dbo].[Account_HE164042] ([id])
GO
ALTER TABLE [dbo].[Order_HE164042] CHECK CONSTRAINT [FK_Order_HE164042_Account_HE164042]
GO
ALTER TABLE [dbo].[OrderDetail_HE164042]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_HE164042_Order_HE164042] FOREIGN KEY([oid])
REFERENCES [dbo].[Order_HE164042] ([id])
GO
ALTER TABLE [dbo].[OrderDetail_HE164042] CHECK CONSTRAINT [FK_OrderDetail_HE164042_Order_HE164042]
GO
ALTER TABLE [dbo].[OrderDetail_HE164042]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_HE164042_Product_HE164042] FOREIGN KEY([pid])
REFERENCES [dbo].[Product_HE164042] ([id])
GO
ALTER TABLE [dbo].[OrderDetail_HE164042] CHECK CONSTRAINT [FK_OrderDetail_HE164042_Product_HE164042]
GO
ALTER TABLE [dbo].[Product_HE164042]  WITH CHECK ADD  CONSTRAINT [FK_Product_HE164042_Category_HE164042] FOREIGN KEY([cid])
REFERENCES [dbo].[Category_HE164042] ([id])
GO
ALTER TABLE [dbo].[Product_HE164042] CHECK CONSTRAINT [FK_Product_HE164042_Category_HE164042]
GO
ALTER TABLE [dbo].[User_HE164042]  WITH CHECK ADD  CONSTRAINT [FK_User_HE164042_Account_HE164042] FOREIGN KEY([id])
REFERENCES [dbo].[Account_HE164042] ([id])
GO
ALTER TABLE [dbo].[User_HE164042] CHECK CONSTRAINT [FK_User_HE164042_Account_HE164042]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SE1650] SET  READ_WRITE 
GO
