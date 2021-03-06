USE [master]
GO
/****** Object:  Database [db2018]    Script Date: 2018-06-22 9:16:33 PM ******/
CREATE DATABASE [db2018]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db2018', FILENAME = N'C:\Users\Hamza.TSI\db2018.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db2018_log', FILENAME = N'C:\Users\Hamza.TSI\db2018_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db2018] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db2018].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db2018] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db2018] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db2018] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db2018] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db2018] SET ARITHABORT OFF 
GO
ALTER DATABASE [db2018] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db2018] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db2018] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db2018] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db2018] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db2018] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db2018] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db2018] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db2018] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db2018] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db2018] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db2018] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db2018] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db2018] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db2018] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db2018] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db2018] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db2018] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db2018] SET  MULTI_USER 
GO
ALTER DATABASE [db2018] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db2018] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db2018] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db2018] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [db2018]
GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 2018-06-22 9:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[idCat] [int] NOT NULL,
	[libelle] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 2018-06-22 9:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[idClt] [int] NOT NULL,
	[nomClient] [nvarchar](50) NULL,
	[prenomClient] [nvarchar](50) NULL,
	[emailClient] [nvarchar](50) NULL,
	[mdpClient] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idClt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Degats]    Script Date: 2018-06-22 9:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degats](
	[idD] [int] NOT NULL,
	[idEmp] [int] NULL,
	[description] [nvarchar](255) NULL,
	[coutEstime] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Emprunter]    Script Date: 2018-06-22 9:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emprunter](
	[idEmp] [int] NOT NULL,
	[idClt] [int] NULL,
	[idmat] [int] NULL,
	[dateEmprunt] [date] NULL,
	[dateRetour] [date] NULL,
	[dureeEmprunt] [int] NULL,
	[montantTotal] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materiel]    Script Date: 2018-06-22 9:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiel](
	[idMat] [int] NOT NULL,
	[libelle] [nvarchar](50) NULL,
	[prixEmprunt] [money] NULL,
	[idCat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Categorie] ([idCat], [libelle]) VALUES (1, N'DFGg')
INSERT [dbo].[Categorie] ([idCat], [libelle]) VALUES (2, N'hkhjk')
INSERT [dbo].[Categorie] ([idCat], [libelle]) VALUES (3, N'rthhg')
INSERT [dbo].[Client] ([idClt], [nomClient], [prenomClient], [emailClient], [mdpClient]) VALUES (1, N'Taoussi', N'Hamza', N'dghh@dfg.fr', N'0000')
INSERT [dbo].[Emprunter] ([idEmp], [idClt], [idmat], [dateEmprunt], [dateRetour], [dureeEmprunt], [montantTotal]) VALUES (1, 1, 1, CAST(N'2018-01-01' AS Date), CAST(N'2018-01-30' AS Date), 30, 60.0000)
INSERT [dbo].[Emprunter] ([idEmp], [idClt], [idmat], [dateEmprunt], [dateRetour], [dureeEmprunt], [montantTotal]) VALUES (2, 1, 2, CAST(N'2018-02-01' AS Date), CAST(N'2018-02-27' AS Date), 27, 58.0000)
INSERT [dbo].[Materiel] ([idMat], [libelle], [prixEmprunt], [idCat]) VALUES (1, N'jhgjfg', 20.0000, 1)
INSERT [dbo].[Materiel] ([idMat], [libelle], [prixEmprunt], [idCat]) VALUES (2, N'iglglkjl', 30.0000, 2)
ALTER TABLE [dbo].[Degats]  WITH CHECK ADD FOREIGN KEY([idEmp])
REFERENCES [dbo].[Emprunter] ([idEmp])
GO
ALTER TABLE [dbo].[Emprunter]  WITH CHECK ADD FOREIGN KEY([idClt])
REFERENCES [dbo].[Client] ([idClt])
GO
ALTER TABLE [dbo].[Emprunter]  WITH CHECK ADD FOREIGN KEY([idmat])
REFERENCES [dbo].[Materiel] ([idMat])
GO
ALTER TABLE [dbo].[Materiel]  WITH CHECK ADD FOREIGN KEY([idCat])
REFERENCES [dbo].[Categorie] ([idCat])
GO
USE [master]
GO
ALTER DATABASE [db2018] SET  READ_WRITE 
GO
