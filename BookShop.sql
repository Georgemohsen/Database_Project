USE [master]
GO
/****** Object:  Database [BookShop]    Script Date: 07-Dec-18 2:42:26 PM ******/
CREATE DATABASE [BookShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BookShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BookShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BookShop] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BookShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookShop] SET  MULTI_USER 
GO
ALTER DATABASE [BookShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookShop] SET QUERY_STORE = OFF
GO
USE [BookShop]
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
USE [BookShop]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 07-Dec-18 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[Author_ID] [int] NOT NULL,
	[Author_Name] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrows]    Script Date: 07-Dec-18 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrows](
	[SSN] [int] NOT NULL,
	[Item_ID] [int] NOT NULL,
	[Borrow_Date] [date] NOT NULL,
	[Return_Date] [date] NOT NULL,
 CONSTRAINT [Borrows_Pk] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC,
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CD]    Script Date: 07-Dec-18 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CD](
	[Item_ID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[CDName] [varchar](1) NOT NULL,
	[Section_ID] [int] NULL,
	[Publisher_ID] [int] NULL,
 CONSTRAINT [CD_pk] PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 07-Dec-18 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[SSN] [int] NOT NULL,
	[First_Name] [varchar](50) NOT NULL,
	[Last_Name] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Age] [int] NULL,
	[Addr] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 07-Dec-18 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[Publisher_ID] [int] NOT NULL,
	[PublisherName] [varchar](80) NULL,
 CONSTRAINT [Publisher_pk] PRIMARY KEY CLUSTERED 
(
	[Publisher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 07-Dec-18 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Section_ID] [int] NOT NULL,
	[Sname] [varchar](50) NULL,
 CONSTRAINT [Section_pk] PRIMARY KEY CLUSTERED 
(
	[Section_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Written]    Script Date: 07-Dec-18 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Written](
	[Item_ID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[NumberOfPages] [int] NULL,
	[Released_Date] [date] NULL,
	[Book_Flag] [int] NULL,
	[Magazine_Flag] [int] NULL,
	[Section_ID] [int] NULL,
	[Publisher_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Written_By]    Script Date: 07-Dec-18 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Written_By](
	[Item_ID] [int] NOT NULL,
	[Author_ID] [int] NOT NULL,
 CONSTRAINT [Written_By_Pk] PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC,
	[Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (20860, N'Omar', N'Hany', N'01225505053', 27, N'Dokki')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (405190, N'David', N'George', N'01280056020', 29, N'Abassia')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (1411450, N'Ahmed', N'Fathy', N'0122414143', 22, N'Sadat City')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (1422061, N'Germin', N'Samy', N'015069348562', 24, N'Alexandria')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (1429861, N'Mora', N'George', N'018596345789', 22, N'Dokki')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (1801450, N'Ahmed', N'Soliman', N'012296354789', 25, N'Sherouk City')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (1815050, N'Ahmed', N'Soliman', N'012299054789', 24, N'New City')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (1815550, N'Ahmed', N'Soliman', N'012299047889', 28, N' Daher ')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (4059060, N'Youssef', N'Moahmed', N'01285698776', 24, N'Roxy')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (4069656, N'Samia', N'Fathy', N'0596863234', 48, N'Triumph')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (5060960, N'Mohamed', N'Mohsen', N'01115505069', 42, N'Nasr City')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (5160360, N'Mohamed', N'Sherif', N'01117805069', 32, N'Attaba')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (6096357, N'Eriny', N'George', N'1506395574', 34, N'Ain Shams')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (14152036, N'Sara', N'Farouk', N'+201229646354', 28, N'Hegaz')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (14156296, N'Sara', N'Farouk', N'+201229646987', 28, N'Hegaz')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (14156906, N'Sara', N'Farouk', N'+01229667087', 28, N'Hegaz')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (14620461, N'Ayten', N'Samy', N'015030048562', 27, N'Nasr City')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (14693461, N'Ayten', N'Samy', N'0150906048562', 26, N'Nasr City')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (20808060, N'Omar', N'Ahmed', N'01225965053', 28, N'Dokki')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (20808560, N'Omar', N'Ahmed', N'01225960753', 28, N'Rahab')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (40595960, N'Youssef', N'Moahmed', N'01256698776', 26, N'Hegaz')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (51203060, N'Mohamed', N'Farouk', N'01117805069', 30, N'Rehab')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (51260060, N'Mohamed', N'Farouk', N'01117863069', 31, N'Rehab')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (70509063, N'Michael', N'George', N'01501234574', 25, N'Ain Shams')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (70609663, N'Eriny', N'George', N'01206395574', 31, N'Ain Shams')
INSERT [dbo].[Member] ([SSN], [First_Name], [Last_Name], [Phone], [Age], [Addr]) VALUES (70905063, N'Andrew', N'George', N'01501245574', 28, N'Ain Shams')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1001, N'Science')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1002, N'Art')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1003, N'literature')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1004, N'Politics')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1005, N'Religion')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1006, N'Programming')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1007, N'Photography')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1008, N'Cooking')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1009, N'Law')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1010, N'Health')
INSERT [dbo].[Section] ([Section_ID], [Sname]) VALUES (1011, N'History')
ALTER TABLE [dbo].[Borrows]  WITH CHECK ADD  CONSTRAINT [Borrows_fk] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[CD] ([Item_ID])
GO
ALTER TABLE [dbo].[Borrows] CHECK CONSTRAINT [Borrows_fk]
GO
ALTER TABLE [dbo].[Borrows]  WITH CHECK ADD  CONSTRAINT [Borrows_fk2] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[Written] ([Item_ID])
GO
ALTER TABLE [dbo].[Borrows] CHECK CONSTRAINT [Borrows_fk2]
GO
ALTER TABLE [dbo].[Borrows]  WITH CHECK ADD FOREIGN KEY([SSN])
REFERENCES [dbo].[Member] ([SSN])
GO
ALTER TABLE [dbo].[CD]  WITH CHECK ADD FOREIGN KEY([Publisher_ID])
REFERENCES [dbo].[Publisher] ([Publisher_ID])
GO
ALTER TABLE [dbo].[CD]  WITH CHECK ADD FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Section] ([Section_ID])
GO
ALTER TABLE [dbo].[Written]  WITH CHECK ADD FOREIGN KEY([Publisher_ID])
REFERENCES [dbo].[Publisher] ([Publisher_ID])
GO
ALTER TABLE [dbo].[Written]  WITH CHECK ADD FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Section] ([Section_ID])
GO
ALTER TABLE [dbo].[Written_By]  WITH CHECK ADD  CONSTRAINT [Written_By_Fk1] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[Written] ([Item_ID])
GO
ALTER TABLE [dbo].[Written_By] CHECK CONSTRAINT [Written_By_Fk1]
GO
ALTER TABLE [dbo].[Written_By]  WITH CHECK ADD  CONSTRAINT [Written_By_Fk2] FOREIGN KEY([Item_ID])
REFERENCES [dbo].[CD] ([Item_ID])
GO
ALTER TABLE [dbo].[Written_By] CHECK CONSTRAINT [Written_By_Fk2]
GO
ALTER TABLE [dbo].[Written_By]  WITH CHECK ADD  CONSTRAINT [Written_By_Fk3] FOREIGN KEY([Author_ID])
REFERENCES [dbo].[Author] ([Author_ID])
GO
ALTER TABLE [dbo].[Written_By] CHECK CONSTRAINT [Written_By_Fk3]
GO
USE [master]
GO
ALTER DATABASE [BookShop] SET  READ_WRITE 
GO
