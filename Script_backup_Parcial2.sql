USE [master]
GO
/****** Object:  Database [FincaAgricolaDB]    Script Date: 4/14/2025 11:34:04 AM ******/
CREATE DATABASE [FincaAgricolaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FincaAgricolaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FincaAgricolaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FincaAgricolaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FincaAgricolaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FincaAgricolaDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FincaAgricolaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FincaAgricolaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FincaAgricolaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FincaAgricolaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FincaAgricolaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FincaAgricolaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET RECOVERY FULL 
GO
ALTER DATABASE [FincaAgricolaDB] SET  MULTI_USER 
GO
ALTER DATABASE [FincaAgricolaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FincaAgricolaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FincaAgricolaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FincaAgricolaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FincaAgricolaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FincaAgricolaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FincaAgricolaDB', N'ON'
GO
ALTER DATABASE [FincaAgricolaDB] SET QUERY_STORE = OFF
GO
USE [FincaAgricolaDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maquinarias]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquinarias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioCreadorM] [nvarchar](450) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[Marca] [nvarchar](50) NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Maquinarias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioCreadorP] [nvarchar](450) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[Contenido] [nvarchar](max) NOT NULL,
	[Fecha] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 4/14/2025 11:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioCreador] [nvarchar](450) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[ImagenRuta] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250408231705_primeraPrueba', N'8.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250412192215_11-04-25', N'8.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250412210859_AgregarFoto', N'8.0.14')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250412212916_foto', N'8.0.14')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0ebbfe4e-2de8-4615-8810-b1e96c405dd2', N'Cliente', N'CLIENTE', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8384847e-a190-46c6-adb1-2e7702f35d2b', N'Usuario', N'USUARIO', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b31ee7c2-808e-4191-9bbf-1094132f6344', N'Administrador', N'ADMINISTRADOR', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'22048245-c8e7-4b83-937c-2640c7472dee', N'0ebbfe4e-2de8-4615-8810-b1e96c405dd2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3ece7f65-2151-4d94-aed6-059e32372b0f', N'0ebbfe4e-2de8-4615-8810-b1e96c405dd2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3ece7f65-2151-4d94-aed6-059e32372b0f', N'b31ee7c2-808e-4191-9bbf-1094132f6344')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd82fd979-b277-4001-bd38-a3b12043733c', N'b31ee7c2-808e-4191-9bbf-1094132f6344')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Apellidos], [Direccion], [Nombre]) VALUES (N'22048245-c8e7-4b83-937c-2640c7472dee', N'RicRiv@uam.cr.net', N'RICRIV@UAM.CR.NET', N'RicRiv@uam.cr.net', N'RICRIV@UAM.CR.NET', 0, N'AQAAAAIAAYagAAAAEFmy54mOlbm+qmgt41NBus42Hg1EwxqtceW+Ve3h6BzKZeof8lrBo9pz0tYTXw7I5Q==', N'2FGEJ3BZSOYCZI4M2EMXX3NVR2XZLMLB', N'9ec5a8c9-3728-40ac-ab86-e31defb08011', NULL, 0, 0, NULL, 1, 0, N'Gonzalez', N'San Jose', N'Ricardo')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Apellidos], [Direccion], [Nombre]) VALUES (N'3ece7f65-2151-4d94-aed6-059e32372b0f', N'josue.arias.madrigal@outlook.com', N'JOSUE.ARIAS.MADRIGAL@OUTLOOK.COM', N'josue.arias.madrigal@outlook.com', N'JOSUE.ARIAS.MADRIGAL@OUTLOOK.COM', 0, N'AQAAAAIAAYagAAAAEGRCkyK0utssS0Slp6uJQWELxPamLsvuZT6ok80ZNMaV5R8/l5cLgKbEM9bbmGqxrA==', N'YF44YLCUCGF4KZ7HUZTDALJYLPT6PYH5', N'd99bbb5c-4fd7-4b67-9c6f-2522f9962b9c', NULL, 0, 0, NULL, 1, 0, N'Arias', N'La Gloria', N'Josue')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Apellidos], [Direccion], [Nombre]) VALUES (N'd82fd979-b277-4001-bd38-a3b12043733c', N'admin@admin.com', N'ADMIN@ADMIN.COM', N'admin@admin.com', N'ADMIN@ADMIN.COM', 0, N'AQAAAAIAAYagAAAAEFaYVGXiSRvTG/gdWIpLHoKSnPHqkq1e/RsfiXy3FfX3BI4HZDB5Rt5AXKd4OFrL5Q==', N'2UY7GH6EFCOMFAUKLHEDT6MS4Z3TVCGS', N'95090945-0416-4dcb-a922-31abff7bb0ab', NULL, 0, 0, NULL, 1, 0, N'Sistema', N'Oficina Central', N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Maquinarias] ON 
GO
INSERT [dbo].[Maquinarias] ([Id], [IdUsuarioCreadorM], [Nombre], [Descripcion], [Marca], [Modelo]) VALUES (1, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Tractor ', N'Máquina potente utilizada principalmente en agricultura, construcción y otros trabajos pesados.', N'John Deere', N'JD5050')
GO
INSERT [dbo].[Maquinarias] ([Id], [IdUsuarioCreadorM], [Nombre], [Descripcion], [Marca], [Modelo]) VALUES (2, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Desmalezadora', N'Una desmalezadora, también conocida como desbrozadora o cortadora de maleza, es una herramienta de gran utilidad en trabajos de jardinería, agricultura y mantenimiento de terrenos.', N'Stihl', N'JD-X1000')
GO
INSERT [dbo].[Maquinarias] ([Id], [IdUsuarioCreadorM], [Nombre], [Descripcion], [Marca], [Modelo]) VALUES (3, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Cosechadora', N'Máquina utilizada para recolectar cultivos como maíz, trigo, arroz, entre otros. Incluye funciones para cortar, separar y limpiar los granos', N'John Deere', N'FS120')
GO
INSERT [dbo].[Maquinarias] ([Id], [IdUsuarioCreadorM], [Nombre], [Descripcion], [Marca], [Modelo]) VALUES (4, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Excavadora', N'Utilizada en construcción para excavar tierra, levantar materiales pesados y realizar trabajos de demolición', N'Stihl', N'STH102')
GO
INSERT [dbo].[Maquinarias] ([Id], [IdUsuarioCreadorM], [Nombre], [Descripcion], [Marca], [Modelo]) VALUES (5, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Cortadora de cesped', N'Máquina diseñada para cortar pasto en áreas grandes y mantener jardines o campos deportivos.', N'John Deere', N'HDF12')
GO
SET IDENTITY_INSERT [dbo].[Maquinarias] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 
GO
INSERT [dbo].[Preguntas] ([Id], [IdUsuarioCreadorP], [Titulo], [Contenido], [Fecha]) VALUES (1, N'd82fd979-b277-4001-bd38-a3b12043733c', N'HOLA', N'Pregunta', CAST(N'2025-04-14T02:17:27.7045468' AS DateTime2))
GO
INSERT [dbo].[Preguntas] ([Id], [IdUsuarioCreadorP], [Titulo], [Contenido], [Fecha]) VALUES (2, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Habilidades de los cerdos', N'Quiero saber de parte de profesionales en la labor de granja, ¿es cierto que los cerdos pueden volar?, me lo dijo un amigo y no se si creerle o no', CAST(N'2025-04-14T02:28:06.6435678' AS DateTime2))
GO
INSERT [dbo].[Preguntas] ([Id], [IdUsuarioCreadorP], [Titulo], [Contenido], [Fecha]) VALUES (3, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Zanahorias', N'¿Es cierto que las zanahorias son buenas para la visión?', CAST(N'2025-04-14T03:56:27.3353808' AS DateTime2))
GO
INSERT [dbo].[Preguntas] ([Id], [IdUsuarioCreadorP], [Titulo], [Contenido], [Fecha]) VALUES (4, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Alimento para cerdos', N'¿Es seguro para los cerdos alimentarlos únicamente con el alimento para cerdos?
Es que de vez en cuando me gusta darles verduras o sobros de comida, me gustaría saber si esto puede causarles algún problema de salud', CAST(N'2025-04-14T03:58:47.4671523' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (1, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Alimento de cerdo', N'Alimento para cerdo', CAST(5000.00 AS Decimal(10, 2)), N'/imagenes/productos/ecc9fd34-f9a9-4afc-b99d-48ccde7c7643.jpg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (4, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Abono Organico', N'Abono no dañino', CAST(7000.00 AS Decimal(10, 2)), N'/imagenes/productos/6784b2a3-3b44-4ff9-a2c7-1fa0281bd337.jpg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (5, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Abono Inorganico', N'Abono dañino', CAST(3000.00 AS Decimal(10, 2)), N'/imagenes/productos/20efd1fb-deec-42dc-9588-7816648cf832.jpg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (6, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Arroz', N'Arroz de calidad', CAST(2500.00 AS Decimal(10, 2)), N'/imagenes/productos/7c905acc-6df4-4cd3-b842-95a1b05fcdae.jpeg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (7, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Tomate', N'Tomate Saludable', CAST(4500.00 AS Decimal(10, 2)), N'/imagenes/productos/6084382a-9a56-4ef4-b7fc-0e9fc16c1b47.jpeg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (8, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Mango', N'Mango Maduro', CAST(4000.00 AS Decimal(10, 2)), N'/imagenes/productos/7b147a89-78db-43f0-b1c8-5c17ee3c1507.jpeg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (9, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Maiz', N'Maiz Amarillo', CAST(2000.00 AS Decimal(10, 2)), N'/imagenes/productos/0c5774b3-fc4a-414c-be3a-75ab1f74b6f1.jpeg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (10, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Cebolla', N'Cebolla 1ra calidad', CAST(3000.00 AS Decimal(10, 2)), N'/imagenes/productos/b3801b67-66f4-468d-9574-adae2bfafd0c.jpeg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (11, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Lechuga', N'Lechuga Fresca', CAST(1000.00 AS Decimal(10, 2)), N'/imagenes/productos/239d0f17-fda0-44f7-91d3-ab021fa632b8.jpg')
GO
INSERT [dbo].[Productos] ([Id], [IdUsuarioCreador], [Nombre], [Descripcion], [Precio], [ImagenRuta]) VALUES (12, N'd82fd979-b277-4001-bd38-a3b12043733c', N'Frijoles', N'Frijol Rojo', CAST(2100.00 AS Decimal(10, 2)), N'/imagenes/productos/3d403080-8f04-4b28-9a7c-eaadf726be21.jpeg')
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Maquinarias_IdUsuarioCreadorM]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_Maquinarias_IdUsuarioCreadorM] ON [dbo].[Maquinarias]
(
	[IdUsuarioCreadorM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Preguntas_IdUsuarioCreadorP]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_Preguntas_IdUsuarioCreadorP] ON [dbo].[Preguntas]
(
	[IdUsuarioCreadorP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Productos_IdUsuarioCreador]    Script Date: 4/14/2025 11:34:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_Productos_IdUsuarioCreador] ON [dbo].[Productos]
(
	[IdUsuarioCreador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Apellidos]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Direccion]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Nombre]
GO
ALTER TABLE [dbo].[Productos] ADD  DEFAULT (N'') FOR [ImagenRuta]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Maquinarias]  WITH CHECK ADD  CONSTRAINT [FK_Maquinarias_AspNetUsers_IdUsuarioCreadorM] FOREIGN KEY([IdUsuarioCreadorM])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Maquinarias] CHECK CONSTRAINT [FK_Maquinarias_AspNetUsers_IdUsuarioCreadorM]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_AspNetUsers_IdUsuarioCreadorP] FOREIGN KEY([IdUsuarioCreadorP])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_AspNetUsers_IdUsuarioCreadorP]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_AspNetUsers_IdUsuarioCreador] FOREIGN KEY([IdUsuarioCreador])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_AspNetUsers_IdUsuarioCreador]
GO
USE [master]
GO
ALTER DATABASE [FincaAgricolaDB] SET  READ_WRITE 
GO
