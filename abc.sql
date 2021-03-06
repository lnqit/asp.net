USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 9/7/2019 9:46:38 AM ******/
CREATE DATABASE [ShopOnline]
 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnline] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ShopOnline]
GO
/****** Object:  User [Huy]    Script Date: 9/7/2019 9:46:39 AM ******/
CREATE USER [Huy] FOR LOGIN [Huy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DungNV74]    Script Date: 9/7/2019 9:46:39 AM ******/
CREATE USER [DungNV74] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NULL,
	[OrderDate] [datetime] NULL,
	[Quantity] [nchar](10) NULL,
	[UserID] [uniqueidentifier] NULL,
	[Price] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[CategoryProductID] [uniqueidentifier] NOT NULL,
	[Desciption] [nvarchar](50) NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[CategoryProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [uniqueidentifier] NOT NULL,
	[CountryID] [uniqueidentifier] NULL,
	[NameCity] [nvarchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [uniqueidentifier] NOT NULL,
	[NameCountry] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [uniqueidentifier] NOT NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[UserID] [uniqueidentifier] NULL,
	[ShopID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailsID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NULL,
	[QuantityOrdered] [int] NULL,
	[Price] [int] NULL,
	[OrderCode] [nvarchar](50) NULL,
	[OrderID] [uniqueidentifier] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [uniqueidentifier] NOT NULL,
	[CategoryProductID] [uniqueidentifier] NULL,
	[Name] [nvarchar](50) NULL,
	[Desciption] [nvarchar](max) NULL,
	[Price] [money] NULL,
	[CityID] [uniqueidentifier] NULL,
	[Image] [nvarchar](max) NULL,
	[ShopID] [uniqueidentifier] NULL,
	[Count] [int] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [uniqueidentifier] NOT NULL,
	[NameRole] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[ShopID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NULL,
	[NameShop] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CityID] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[ShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 9/7/2019 9:46:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [uniqueidentifier] NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[BirthDay] [datetime] NULL,
	[Phone] [varchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[CMNN] [nvarchar](20) NULL,
	[CityID] [uniqueidentifier] NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[Role] [int] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shop] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ShopID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Shop]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_CategoryProduct] FOREIGN KEY([CategoryProductID])
REFERENCES [dbo].[CategoryProduct] ([CategoryProductID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_CategoryProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_City]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Shop] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ShopID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Shop]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_City]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_City]
GO
USE [master]
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE 
GO
