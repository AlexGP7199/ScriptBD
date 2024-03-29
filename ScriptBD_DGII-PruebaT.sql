USE [master]
GO
/****** Object:  Database [DGII_PruebaT]    Script Date: 3/19/2024 10:09:12 AM ******/
CREATE DATABASE [DGII_PruebaT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DGII_PruebaT', FILENAME = N'D:\Programas\SQL\SQL-Express\MSSQL16.SQLEXPRESS\MSSQL\DATA\DGII_PruebaT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DGII_PruebaT_log', FILENAME = N'D:\Programas\SQL\SQL-Express\MSSQL16.SQLEXPRESS\MSSQL\DATA\DGII_PruebaT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DGII_PruebaT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DGII_PruebaT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DGII_PruebaT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET ARITHABORT OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DGII_PruebaT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DGII_PruebaT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DGII_PruebaT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DGII_PruebaT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DGII_PruebaT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DGII_PruebaT] SET  MULTI_USER 
GO
ALTER DATABASE [DGII_PruebaT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DGII_PruebaT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DGII_PruebaT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DGII_PruebaT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DGII_PruebaT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DGII_PruebaT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DGII_PruebaT] SET QUERY_STORE = ON
GO
ALTER DATABASE [DGII_PruebaT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DGII_PruebaT]
GO
/****** Object:  Table [dbo].[Contribuyente]    Script Date: 3/19/2024 10:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contribuyente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rncCedula] [varchar](11) NOT NULL,
	[nombre] [nvarchar](255) NOT NULL,
	[TipoContribuyenteId] [int] NOT NULL,
	[EstatusContribuyenteId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstatusContribuyente]    Script Date: 3/19/2024 10:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstatusContribuyente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 3/19/2024 10:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rncCedulaId] [int] NOT NULL,
	[NCF] [nvarchar](13) NOT NULL,
	[monto] [decimal](15, 2) NOT NULL,
	[itbis18] [decimal](15, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCFs]    Script Date: 3/19/2024 10:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCFs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [nvarchar](20) NULL,
	[UltimoSecuencial] [int] NULL,
	[FechaUltimoUso] [datetime] NULL,
	[contribuyenteId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContribuyente]    Script Date: 3/19/2024 10:09:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContribuyente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contribuyente] ON 

INSERT [dbo].[Contribuyente] ([id], [rncCedula], [nombre], [TipoContribuyenteId], [EstatusContribuyenteId]) VALUES (1, N'201', N'Prueba', 1, 2)
INSERT [dbo].[Contribuyente] ([id], [rncCedula], [nombre], [TipoContribuyenteId], [EstatusContribuyenteId]) VALUES (2, N'1243124124', N'Prueba2', 1, 1)
INSERT [dbo].[Contribuyente] ([id], [rncCedula], [nombre], [TipoContribuyenteId], [EstatusContribuyenteId]) VALUES (4, N'string', N'string', 1, 2)
INSERT [dbo].[Contribuyente] ([id], [rncCedula], [nombre], [TipoContribuyenteId], [EstatusContribuyenteId]) VALUES (5, N'string2', N'string', 1, 1)
INSERT [dbo].[Contribuyente] ([id], [rncCedula], [nombre], [TipoContribuyenteId], [EstatusContribuyenteId]) VALUES (6, N'string1', N'string', 1, 2)
SET IDENTITY_INSERT [dbo].[Contribuyente] OFF
GO
SET IDENTITY_INSERT [dbo].[EstatusContribuyente] ON 

INSERT [dbo].[EstatusContribuyente] ([id], [Descripcion]) VALUES (1, N'activo')
INSERT [dbo].[EstatusContribuyente] ([id], [Descripcion]) VALUES (2, N'inactivo')
INSERT [dbo].[EstatusContribuyente] ([id], [Descripcion]) VALUES (1003, N'prueba act')
INSERT [dbo].[EstatusContribuyente] ([id], [Descripcion]) VALUES (3, N'uwu')
SET IDENTITY_INSERT [dbo].[EstatusContribuyente] OFF
GO
SET IDENTITY_INSERT [dbo].[Factura] ON 

INSERT [dbo].[Factura] ([id], [rncCedulaId], [NCF], [monto], [itbis18]) VALUES (9, 1, N'DG0100000001', CAST(250.00 AS Decimal(15, 2)), CAST(45.00 AS Decimal(15, 2)))
INSERT [dbo].[Factura] ([id], [rncCedulaId], [NCF], [monto], [itbis18]) VALUES (10, 1, N'DG0100000002', CAST(400.00 AS Decimal(15, 2)), CAST(72.00 AS Decimal(15, 2)))
INSERT [dbo].[Factura] ([id], [rncCedulaId], [NCF], [monto], [itbis18]) VALUES (11, 1, N'DG0100000003', CAST(500.00 AS Decimal(15, 2)), CAST(90.00 AS Decimal(15, 2)))
INSERT [dbo].[Factura] ([id], [rncCedulaId], [NCF], [monto], [itbis18]) VALUES (1002, 4, N'DG0100000004', CAST(100.00 AS Decimal(15, 2)), CAST(18.00 AS Decimal(15, 2)))
SET IDENTITY_INSERT [dbo].[Factura] OFF
GO
SET IDENTITY_INSERT [dbo].[NCFs] ON 

INSERT [dbo].[NCFs] ([Id], [Serie], [UltimoSecuencial], [FechaUltimoUso], [contribuyenteId]) VALUES (15, N'DG01', 1, CAST(N'2024-03-18T12:00:39.360' AS DateTime), 1)
INSERT [dbo].[NCFs] ([Id], [Serie], [UltimoSecuencial], [FechaUltimoUso], [contribuyenteId]) VALUES (16, N'DG01', 2, CAST(N'2024-03-18T12:00:39.360' AS DateTime), 1)
INSERT [dbo].[NCFs] ([Id], [Serie], [UltimoSecuencial], [FechaUltimoUso], [contribuyenteId]) VALUES (17, N'DG01', 3, CAST(N'2024-03-18T12:00:39.360' AS DateTime), 1)
INSERT [dbo].[NCFs] ([Id], [Serie], [UltimoSecuencial], [FechaUltimoUso], [contribuyenteId]) VALUES (1002, N'DG01', 4, CAST(N'2024-03-18T12:00:39.360' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[NCFs] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoContribuyente] ON 

INSERT [dbo].[TipoContribuyente] ([id], [Descripcion]) VALUES (1, N'PERSONA FISICA')
INSERT [dbo].[TipoContribuyente] ([id], [Descripcion]) VALUES (2, N'PERSONA JURIDICA')
INSERT [dbo].[TipoContribuyente] ([id], [Descripcion]) VALUES (3, N'uwunt')
SET IDENTITY_INSERT [dbo].[TipoContribuyente] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Contribu__38AA49B251DDA23A]    Script Date: 3/19/2024 10:09:12 AM ******/
ALTER TABLE [dbo].[Contribuyente] ADD UNIQUE NONCLUSTERED 
(
	[rncCedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__EstatusC__92C53B6C7566F92F]    Script Date: 3/19/2024 10:09:12 AM ******/
ALTER TABLE [dbo].[EstatusContribuyente] ADD UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TipoCont__92C53B6CCF484A14]    Script Date: 3/19/2024 10:09:12 AM ******/
ALTER TABLE [dbo].[TipoContribuyente] ADD UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contribuyente]  WITH CHECK ADD FOREIGN KEY([EstatusContribuyenteId])
REFERENCES [dbo].[EstatusContribuyente] ([id])
GO
ALTER TABLE [dbo].[Contribuyente]  WITH CHECK ADD FOREIGN KEY([TipoContribuyenteId])
REFERENCES [dbo].[TipoContribuyente] ([id])
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD FOREIGN KEY([rncCedulaId])
REFERENCES [dbo].[Contribuyente] ([id])
GO
ALTER TABLE [dbo].[NCFs]  WITH CHECK ADD FOREIGN KEY([contribuyenteId])
REFERENCES [dbo].[Contribuyente] ([id])
GO
USE [master]
GO
ALTER DATABASE [DGII_PruebaT] SET  READ_WRITE 
GO
