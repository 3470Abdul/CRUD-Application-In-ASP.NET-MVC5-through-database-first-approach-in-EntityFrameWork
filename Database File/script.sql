USE [master]
GO
/****** Object:  Database [DatabaseFirstApproachEFDb]    Script Date: 7/15/2022 7:06:32 PM ******/
CREATE DATABASE [DatabaseFirstApproachEFDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DatabaseFirstApproachEFDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DatabaseFirstApproachEFDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DatabaseFirstApproachEFDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DatabaseFirstApproachEFDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DatabaseFirstApproachEFDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET RECOVERY FULL 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET  MULTI_USER 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DatabaseFirstApproachEFDb', N'ON'
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET QUERY_STORE = OFF
GO
USE [DatabaseFirstApproachEFDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DatabaseFirstApproachEFDb]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 7/15/2022 7:06:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Age] [int] NULL,
	[City] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [DatabaseFirstApproachEFDb] SET  READ_WRITE 
GO
