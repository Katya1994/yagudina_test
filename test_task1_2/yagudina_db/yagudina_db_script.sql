USE [master]
GO
/****** Object:  Database [yagudina_db]    Script Date: 25.09.2021 13:39:09 ******/
CREATE DATABASE [yagudina_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yagudina_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\yagudina_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'yagudina_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\yagudina_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [yagudina_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yagudina_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yagudina_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yagudina_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yagudina_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yagudina_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yagudina_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [yagudina_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yagudina_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yagudina_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yagudina_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yagudina_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yagudina_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yagudina_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yagudina_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yagudina_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yagudina_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yagudina_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yagudina_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yagudina_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yagudina_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yagudina_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yagudina_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yagudina_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yagudina_db] SET RECOVERY FULL 
GO
ALTER DATABASE [yagudina_db] SET  MULTI_USER 
GO
ALTER DATABASE [yagudina_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yagudina_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yagudina_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yagudina_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [yagudina_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [yagudina_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'yagudina_db', N'ON'
GO
ALTER DATABASE [yagudina_db] SET QUERY_STORE = OFF
GO
USE [yagudina_db]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 25.09.2021 13:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[categoryID] [int] NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productCategories]    Script Date: 25.09.2021 13:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productCategories](
	[productCategoryID] [int] NOT NULL,
	[pcProductID] [int] NOT NULL,
	[pcCategoryID] [int] NULL,
 CONSTRAINT [PK_productCategories] PRIMARY KEY CLUSTERED 
(
	[productCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 25.09.2021 13:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[productID] [int] NOT NULL,
	[productName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[categories] ([categoryID], [categoryName]) VALUES (1, N'мясные изделия')
INSERT [dbo].[categories] ([categoryID], [categoryName]) VALUES (2, N'молочные изделия')
INSERT [dbo].[categories] ([categoryID], [categoryName]) VALUES (3, N'хлебобулочные изделия')
INSERT [dbo].[categories] ([categoryID], [categoryName]) VALUES (4, N'кондитерские изделия')
GO
INSERT [dbo].[productCategories] ([productCategoryID], [pcProductID], [pcCategoryID]) VALUES (1, 1, 1)
INSERT [dbo].[productCategories] ([productCategoryID], [pcProductID], [pcCategoryID]) VALUES (2, 2, 2)
INSERT [dbo].[productCategories] ([productCategoryID], [pcProductID], [pcCategoryID]) VALUES (3, 3, 3)
INSERT [dbo].[productCategories] ([productCategoryID], [pcProductID], [pcCategoryID]) VALUES (4, 4, 2)
INSERT [dbo].[productCategories] ([productCategoryID], [pcProductID], [pcCategoryID]) VALUES (5, 5, 2)
INSERT [dbo].[productCategories] ([productCategoryID], [pcProductID], [pcCategoryID]) VALUES (6, 6, NULL)
INSERT [dbo].[productCategories] ([productCategoryID], [pcProductID], [pcCategoryID]) VALUES (7, 7, 3)
INSERT [dbo].[productCategories] ([productCategoryID], [pcProductID], [pcCategoryID]) VALUES (8, 7, 4)
GO
INSERT [dbo].[products] ([productID], [productName]) VALUES (1, N'колбаса')
INSERT [dbo].[products] ([productID], [productName]) VALUES (2, N'сыр')
INSERT [dbo].[products] ([productID], [productName]) VALUES (3, N'хлеб')
INSERT [dbo].[products] ([productID], [productName]) VALUES (4, N'сметана')
INSERT [dbo].[products] ([productID], [productName]) VALUES (5, N'молоко')
INSERT [dbo].[products] ([productID], [productName]) VALUES (6, N'носки')
INSERT [dbo].[products] ([productID], [productName]) VALUES (7, N'пирог')
GO
USE [master]
GO
ALTER DATABASE [yagudina_db] SET  READ_WRITE 
GO
