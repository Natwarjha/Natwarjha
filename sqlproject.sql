USE [master]
GO
/****** Object:  Database [ApnaBazar]    Script Date: 4/10/2019 4:32:47 PM ******/
CREATE DATABASE [ApnaBazar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ApnaBazar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ApnaBazar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ApnaBazar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ApnaBazar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ApnaBazar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ApnaBazar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ApnaBazar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ApnaBazar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ApnaBazar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ApnaBazar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ApnaBazar] SET ARITHABORT OFF 
GO
ALTER DATABASE [ApnaBazar] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ApnaBazar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ApnaBazar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ApnaBazar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ApnaBazar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ApnaBazar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ApnaBazar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ApnaBazar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ApnaBazar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ApnaBazar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ApnaBazar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ApnaBazar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ApnaBazar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ApnaBazar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ApnaBazar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ApnaBazar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ApnaBazar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ApnaBazar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ApnaBazar] SET  MULTI_USER 
GO
ALTER DATABASE [ApnaBazar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ApnaBazar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ApnaBazar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ApnaBazar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ApnaBazar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ApnaBazar] SET QUERY_STORE = OFF
GO
USE [ApnaBazar]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ApnaBazar]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 4/10/2019 4:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[Name] [varchar](30) NULL,
	[Email_Id] [varchar](50) NULL,
	[Mobile_no] [numeric](10, 0) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](10) NULL,
	[confirom_password] [varchar](10) NULL,
	[Reg_Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAddtoCart]    Script Date: 4/10/2019 4:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAddtoCart](
	[Cart_ID] [int] IDENTITY(1,1) NOT NULL,
	[Item_details_Id] [int] NULL,
	[Reg_Id] [int] NULL,
	[Payment] [char](1) NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentOption] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 4/10/2019 4:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminUserName] [varchar](30) NULL,
	[AdminUserPassword] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory_Master]    Script Date: 4/10/2019 4:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory_Master](
	[Categeory_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [varchar](30) NULL,
	[Category_Image] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblItem_Details]    Script Date: 4/10/2019 4:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblItem_Details](
	[Item_details_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_ID] [int] NULL,
	[Item_Name] [varchar](150) NULL,
	[Item_image] [varchar](200) NULL,
	[Item_Price] [numeric](7, 0) NULL,
	[Item_Specification] [varchar](max) NULL,
	[Item_Detail] [varchar](200) NULL,
	[Warranty] [varchar](100) NULL,
	[Item_Brand] [varchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 4/10/2019 4:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[User_Name] [varchar](50) NULL,
	[Passwordd] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPayment]    Script Date: 4/10/2019 4:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayment](
	[Payment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cart_Id] [int] NULL,
	[Reg_Id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTracking]    Script Date: 4/10/2019 4:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTracking](
	[Tracking_Id] [int] IDENTITY(1,1) NOT NULL,
	[Reg_Id] [int] NULL,
	[trackDate] [date] NULL,
	[Location] [varchar](250) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([Name], [Email_Id], [Mobile_no], [UserName], [Password], [confirom_password], [Reg_Id], [Address]) VALUES (N'Salman Khan', N'salmankhan@gmail.com', CAST(9898989898 AS Numeric(10, 0)), N'Salman', N'Salman', N'Salman', 1, N'Chitragupta Nagar, Laheriasarai, Darbhanga, Bihar - 846001')
INSERT [dbo].[Registration] ([Name], [Email_Id], [Mobile_no], [UserName], [Password], [confirom_password], [Reg_Id], [Address]) VALUES (N'Raushan Kumar', N'raushandbg786@gmail.com', CAST(7979786416 AS Numeric(10, 0)), N'raushandbg786@gmail.com', N'9835214011', N'9835214011', 2, N'Chitragupta Nagar, Barheta Road, Laheriasarai, Darbhanga, Bihar - 846001')
INSERT [dbo].[Registration] ([Name], [Email_Id], [Mobile_no], [UserName], [Password], [confirom_password], [Reg_Id], [Address]) VALUES (N'Ghanshyam', N'ghanshyam@gmail.com', CAST(9999999999 AS Numeric(10, 0)), N'abc', N'abc', N'abc', 5, NULL)
SET IDENTITY_INSERT [dbo].[Registration] OFF
SET IDENTITY_INSERT [dbo].[tblAddtoCart] ON 

INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (1, 5, 1, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (4, 30, 1, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (3, 41, 1, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (5, 5, 1, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (6, 35, 2, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (7, 1, 2, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (18, 33, 1, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (22, 34, 1, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (27, 28, 2, NULL, NULL, NULL)
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (25, 28, 1, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
INSERT [dbo].[tblAddtoCart] ([Cart_ID], [Item_details_Id], [Reg_Id], [Payment], [PaymentDate], [PaymentOption]) VALUES (26, 2, 2, N'Y', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Cash on Delivery (COD)')
SET IDENTITY_INSERT [dbo].[tblAddtoCart] OFF
SET IDENTITY_INSERT [dbo].[tblAdmin] ON 

INSERT [dbo].[tblAdmin] ([AdminId], [AdminUserName], [AdminUserPassword]) VALUES (1, N'Admin', N'Admin123')
SET IDENTITY_INSERT [dbo].[tblAdmin] OFF
SET IDENTITY_INSERT [dbo].[tblCategory_Master] ON 

INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (1, N'Jeans', N'photo\mensjeans.jpg')
INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (2, N'Jym', N'photo\Gym.jpg')
INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (3, N'kids clothes', N'photo\Kids clothe.jpg')
INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (4, N'Jym', N'photo\gift image.jpg')
INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (5, N'Jym', N'photo\sunglasses.jpeg')
INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (6, N'Jym', N'photo\toys.jpg')
INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (7, N'Jym', N'photo\shoes mens.jpg')
INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (8, N'Electronics', N'photo\rk6.jpg')
INSERT [dbo].[tblCategory_Master] ([Categeory_ID], [Category_Name], [Category_Image]) VALUES (12, N'Womens wear', N'photo\f2c4a2ae-2a33-4453-8d82-857e1341a436girls kurti.jpg')
SET IDENTITY_INSERT [dbo].[tblCategory_Master] OFF
SET IDENTITY_INSERT [dbo].[tblItem_Details] ON 

INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (1, 1, N'Sparky Jeans', N'Itemimage\Sparky jeans1.jpeg', CAST(1200 AS Numeric(7, 0)), N'80% cotton & 20% Polyster, ', N'Size - 28, Collor Blue', N'1 Monthe exchange Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (2, 1, N'Sarky Jeans black', N'Itemimage\black jeans.jpeg', CAST(1500 AS Numeric(7, 0)), N'100%cotton , Skin Fit', N'Size- 30, Color- Dark Blue ', N'No warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (3, 1, N'Sparky jeans White', N'Itemimage\jeans6.jpeg', CAST(2000 AS Numeric(7, 0)), N'70% Cotton & 30% Polyster, Skin Fit', N'Size- 32, Color- White, ', N'Two Month Exchange Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (4, 1, N'Sparky Jeans Yellow', N'Itemimage\jeans7.jpeg', CAST(1000 AS Numeric(7, 0)), N'60% Cotton & 40% Polyster,  Stretchable', N'Size- 34 color Yellow', N'No warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (5, 1, N'Killer Jeans Blue', N'Itemimage\jeans8.jpeg', CAST(3000 AS Numeric(7, 0)), N'Cotton ', N'Size- 28 Color- Blue', N'Three Month Exchange Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (6, 1, N'Killer Jeans Light Fade', N'Itemimage\Sparky image.jpeg', CAST(3500 AS Numeric(7, 0)), N'Cotton ', N'Size 32 Color Light Fade', N'Foure Month Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (7, 1, N'Killer Jeans White', N'Itemimage\jeans6.jpeg', CAST(4000 AS Numeric(7, 0)), N'Cotton Western Wear', N'Size 34 Color- White', N'Five Month Exchange Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (8, 1, N'Killer Jeans  Black', N'Itemimage\black jeans.jpeg', CAST(6000 AS Numeric(7, 0)), N'Cotton', N'Size- 32  Color- Black', N'No exchange Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (9, 1, N'Monti carlo jeans, Blue', N'Itemimage\jeans5.jpeg', CAST(2000 AS Numeric(7, 0)), N'Cotton Comfortable', N'Size - 28, Color Blue', N'No warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (10, 1, N'Monti carlo jeans, Blue', N'Itemimage\jeans8.jpeg', CAST(2000 AS Numeric(7, 0)), N'Video provides a pdeo, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document.', N'Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the vider document.', N'1 year', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (11, 1, N'Monti carlo jeans, Black', N'Itemimage\black jeans.jpeg', CAST(2500 AS Numeric(7, 0)), N'Cotton , Western Wear', N'Size- 34 Color- Black', N'Two Month Exchange Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (12, 1, N'Monti carlo jeans, Light Fade', N'Itemimage\jeans3.jpeg', CAST(3500 AS Numeric(7, 0)), N'Cotton ', N'Size - 38, Collor Light Fade', N'One Monthe Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (24, 8, N'Mobile', N'Itemimage\4fb62257-912c-4072-ad05-b8ddc9796c1erk10.jpg', CAST(5000 AS Numeric(7, 0)), N'test', N'test', N'1 Monthe exchange Warranty', NULL)
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (25, 2, N'RPM Fitness RPM3000 3.5 HP Peak, Multi Function Motorized', N'Itemimage\355ccb07-8f11-4d71-bacc-b79f1a09c06egym1.jpeg', CAST(14000 AS Numeric(7, 0)), N'Type
Motorized
Ideal For
Men, Women, Boys, Girls, Senior Citizens
Speed
0.8 - 14.8 km/h
Continuous Motor Power
1.75 hp
Peak Motor Power
3.5 hp
Incline Type
Manual Incline', N'
Folding Type
Vertical, Horizontal
Wheels
Yes
Entertainment
MP3 Connectivity
Cooling Fan no
Other Convenience Features
SpFoldable, Automatic Folding Lock, G - Fit Fitness App
', N'1 year', N'Avon')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (28, 2, N'KRX PVC 20 KG COMBO 2 WB Home Gym Kit', N'Itemimage\d4f7708e-fbd9-4b9a-a0c5-610547bd1558gym3.jpeg', CAST(3000 AS Numeric(7, 0)), N'Model Name PVC 20 KG COMBO 2 WB  of PVC weight  1 x 5 feet plain rod, 1 x 3 feet Curl Rod,  dumbbell Rods,  pure leather gym gloves, 1 Skipping Rope, 1 Hand Gripper, 4 Locks ', N'Dimensions Width 152.4 cm Height 33.02 cm Depth 22.86 cm', N'No exchange Warranty', N'Avon')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (30, 2, N'westturn six pack 6 in 1 gym abdominal exerciser machine Ab Exerciser Ab Exerciser', N'Itemimage\1e79e2b2-0d61-4016-9082-9609c6892cc5gym2.jpeg', CAST(3349 AS Numeric(7, 0)), N'Model Name six pack 6 in 1 gym abdominal exerciser machine Ab Exerciser Part Number ID 8975 Sales Package 1 six pack', N'Width 15 inch Height 10 inch Weight 2 kg', N'6 month', N'Blue Bird')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (31, 2, N'Stylish Gym Bag And Gym Glove With Wrist Support Combo Gym & Fitness Kit', N'Itemimage\fcaa21ca-0d71-4092-8746-569084636f98gym7.jpeg', CAST(590 AS Numeric(7, 0)), N'Exercise Type Gym & Fitness Material Leather Other Features Premium Look stylish Sales Package 3', N'Dimensions Width 41 cm Height 23 cm Depth 23 cm', N'No exchange Warranty', N'Health Way')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (32, 2, N'1 KG HOME GYM SET 2 DUMBBELL BLUE + HAND GRIPPER', N'Itemimage\7ac14c8d-a086-457e-849f-332172f39c9dgym10.jpeg', CAST(507 AS Numeric(7, 0)), N'Sales Package 1 KG HOME GYM SET 1 KG X 2 DUMBBELL BLUE, GYM GLOVES PAIR, SKIPPING ROPE, HAND GRIPPER', N'Dimensions Width 44 cm Height 34 cm Depth 21 cm', N'No warranty', N'Avon')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (33, 2, N'Tummy Trimmer Red Ab Exerciser  Ab Exerciser', N'Itemimage\125f642b-b308-4d24-8b8a-c2b3f28a210agym11.jpeg', CAST(220 AS Numeric(7, 0)), N'Model Name Tummy Trimmer Red Ab Exerciser  Part Number ID TTRD04 Sales Package 1 Pack Tummy Trimmer', N'Generic Name Ab Exercisers', N'1 Monthe exchange Warranty', N'Health Way')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (34, 2, N' Fitness DC 30 Cross Trainer', N'Itemimage\9330e524-1f75-4836-b37d-f8b39fb85f5bgym12.jpeg', CAST(12449 AS Numeric(7, 0)), N' Type Cross Trainer Ideal For Men, Women Motor Type Front Drive Maximum Weight Capacity 90 kg', N'Body Features Flywheel Weight 4.3 kg Dimensions Width 91 cm Height 68 cm Weight 32 kg', N'1 year', N'Blue Bird')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (35, 2, N'JF-1100 Heavy Resistance Tube ', N'Itemimage\a67c156f-5880-4311-a202-acad5e2ad8ccgym13.jpeg', CAST(200 AS Numeric(7, 0)), N'Type Toning and Balance Series Fitness Tube Material Latex Handle Features D Shaped Handles Resistance Levels Heavy Resistance', N'Generic Name Resistance Tubes', N'No exchange Warranty', N'Avon')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (37, 2, N'Abs Roller Wheel Exerciser  Ab Exerciser', N'Itemimage\0ed7372b-7efe-4709-a361-2e4936eed645gym16.jpeg', CAST(1000 AS Numeric(7, 0)), N'Model Name Abs Roller Wheel Exerciser  Part Number ID NA Ideal Usage stretching and toning Sport Type fitness Sales Package 1 AB Exerciser', N'Generic Name Ab Exercisers Country of Origin India', N'No exchange Warranty', N'Health Way')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (41, 6, N'Mini Racing 4 Channel Radio control RC Car', N'Itemimage\060518fc-3a24-408a-8e40-3ebde0b64a0etoy1.jpeg', CAST(423 AS Numeric(7, 0)), N'General Type Cars & Bikes Rechargeable Yes Character NA Assembly Required No Material Plastic Minimum Age 3 years', N'Product Dimensions Product Width 18.5 cm Product Height 5.3 cm Product Depth 8 cm Product Weight 200 g', N'No warranty', N'Miss & Chief')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (38, 2, N'PVC 20 KG COMBO 9 WB Home Gym Kit', N'Itemimage\3904784d-4bc6-456a-8023-37c98d060365gyms14.jpeg', CAST(2400 AS Numeric(7, 0)), N'Sales Package 20 Kg of PVC weight (2 Kg x 4 = 8Kg + 3 Kg x 4 = 12 Kg ), 1 x 4 feet plain Rod (Shoulder / Bicep), 2 x 14 " dumbbell Rods, 100% pure leather gym gloves, 1 Skipping Rope, 1 Hand Gripper, 2 Locks and clippers comes with the rods', N'Dimensions Width 121.92 cm Height 33.02 cm Depth 22.86 cm', N'2 Monthe exchange Warranty', N'Health Way')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (39, 2, N'PVC 12 KG COMBO 4 WB -SL Home Gym Kit', N'Itemimage\8ce1535e-78ec-4692-9b9d-20b64f2369a4gym8.jpeg', CAST(4000 AS Numeric(7, 0)), N' Model Name PVC 12 KG COMBO 4 WB -SL Exercise Type Gym & Fitness Designed for Training Sales Package 12 Kg of PVC weight (3 Kg x 4 = 12 Kg ), 1 x 3 feet Curl Rod + 2 x 14 " dumbbell Rods, 100% pure leather gym gloves + 2 Locks and clippers comes with the rods', N'Dimensions Width 36 inch Height 13 inch Depth 9 inch', N'2 Monthe exchange Warranty', N'Blue Bird')
INSERT [dbo].[tblItem_Details] ([Item_details_Id], [Category_ID], [Item_Name], [Item_image], [Item_Price], [Item_Specification], [Item_Detail], [Warranty], [Item_Brand]) VALUES (40, 2, N'4-Wheel Ab Roller Ab Wow Dragon MultiFunctional Wheel Exercise Equipment Ab Exerciser ', N'Itemimage\3b9e10de-5239-4450-81dd-f4d4afadb06fgym17.jpeg', CAST(1000 AS Numeric(7, 0)), N'Specifications Model Name 4-Wheel Ab Roller Ab Wow Dragon MultiFunctional Wheel Exercise Equipment Part Number ID Na Ideal Usage Man, Women Material Plastic Sales Package 1 Set ab roller', N'More Details Generic Name Ab Exercisers', N'1 Monthe exchange Warranty', N'Health Way')
SET IDENTITY_INSERT [dbo].[tblItem_Details] OFF
SET IDENTITY_INSERT [dbo].[tblTracking] ON 

INSERT [dbo].[tblTracking] ([Tracking_Id], [Reg_Id], [trackDate], [Location]) VALUES (1, 1, CAST(N'2019-03-04' AS Date), N'darbhanga')
INSERT [dbo].[tblTracking] ([Tracking_Id], [Reg_Id], [trackDate], [Location]) VALUES (2, 1, CAST(N'2019-04-04' AS Date), N'Arrive Delhi HUB')
SET IDENTITY_INSERT [dbo].[tblTracking] OFF
USE [master]
GO
ALTER DATABASE [ApnaBazar] SET  READ_WRITE 
GO
