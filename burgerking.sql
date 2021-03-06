USE [master]
GO
/****** Object:  Database [BurgerKing]    Script Date: 9/23/2020 12:50:41 AM ******/
CREATE DATABASE [BurgerKing]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BurgerKing_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BurgerKing.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BurgerKing_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BurgerKing.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BurgerKing] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BurgerKing].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BurgerKing] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BurgerKing] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BurgerKing] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BurgerKing] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BurgerKing] SET ARITHABORT OFF 
GO
ALTER DATABASE [BurgerKing] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BurgerKing] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BurgerKing] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BurgerKing] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BurgerKing] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BurgerKing] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BurgerKing] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BurgerKing] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BurgerKing] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BurgerKing] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BurgerKing] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BurgerKing] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BurgerKing] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BurgerKing] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BurgerKing] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BurgerKing] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BurgerKing] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BurgerKing] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BurgerKing] SET  MULTI_USER 
GO
ALTER DATABASE [BurgerKing] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BurgerKing] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BurgerKing] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BurgerKing] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BurgerKing] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BurgerKing] SET QUERY_STORE = OFF
GO
USE [BurgerKing]
GO
/****** Object:  Table [dbo].[Table_Burger]    Script Date: 9/23/2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Burger](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Photo] [varchar](50) NULL,
 CONSTRAINT [PK_Table_Burger] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Contact]    Script Date: 9/23/2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_Table_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Order]    Script Date: 9/23/2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Product] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
 CONSTRAINT [PK_Table_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Recuritment]    Script Date: 9/23/2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Recuritment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Post] [varchar](50) NULL,
	[NoOfPost] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Table_Recuritment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Staff]    Script Date: 9/23/2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
 CONSTRAINT [PK_Table_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_User]    Script Date: 9/23/2020 12:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name_ID] [varchar](50) NULL,
	[Password_ID] [varchar](50) NULL,
 CONSTRAINT [PK_Table_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Table_Order] ON 

INSERT [dbo].[Table_Order] ([id], [Name], [Contact], [Product], [Qty], [Price]) VALUES (1, N'testing', N'6448445', N'cheez', N'12kg', N'250')
SET IDENTITY_INSERT [dbo].[Table_Order] OFF
SET IDENTITY_INSERT [dbo].[Table_Recuritment] ON 

INSERT [dbo].[Table_Recuritment] ([id], [Post], [NoOfPost], [Status]) VALUES (1, N'Chief', N'2', N'Next month joining')
SET IDENTITY_INSERT [dbo].[Table_Recuritment] OFF
SET IDENTITY_INSERT [dbo].[Table_Staff] ON 

INSERT [dbo].[Table_Staff] ([id], [Name], [contact], [Address], [Designation]) VALUES (1, N'gopy', N'6489489', N'papatoe', N'manager')
SET IDENTITY_INSERT [dbo].[Table_Staff] OFF
SET IDENTITY_INSERT [dbo].[Table_User] ON 

INSERT [dbo].[Table_User] ([id], [Name_ID], [Password_ID]) VALUES (1, N'Burger@gmail.com', N'password')
SET IDENTITY_INSERT [dbo].[Table_User] OFF
USE [master]
GO
ALTER DATABASE [BurgerKing] SET  READ_WRITE 
GO
