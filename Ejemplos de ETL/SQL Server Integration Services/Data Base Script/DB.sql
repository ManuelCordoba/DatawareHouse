USE [master]
GO
/****** Object:  Database [Casos_covid_19]    Script Date: 5/2/2020 8:57:13 AM ******/
CREATE DATABASE [Casos_covid_19]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Casos_covid_19', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Casos_covid_19.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Casos_covid_19_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Casos_covid_19_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Casos_covid_19] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Casos_covid_19].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Casos_covid_19] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Casos_covid_19] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Casos_covid_19] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Casos_covid_19] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Casos_covid_19] SET ARITHABORT OFF 
GO
ALTER DATABASE [Casos_covid_19] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Casos_covid_19] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Casos_covid_19] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Casos_covid_19] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Casos_covid_19] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Casos_covid_19] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Casos_covid_19] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Casos_covid_19] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Casos_covid_19] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Casos_covid_19] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Casos_covid_19] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Casos_covid_19] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Casos_covid_19] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Casos_covid_19] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Casos_covid_19] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Casos_covid_19] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Casos_covid_19] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Casos_covid_19] SET RECOVERY FULL 
GO
ALTER DATABASE [Casos_covid_19] SET  MULTI_USER 
GO
ALTER DATABASE [Casos_covid_19] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Casos_covid_19] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Casos_covid_19] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Casos_covid_19] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Casos_covid_19] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Casos_covid_19', N'ON'
GO
ALTER DATABASE [Casos_covid_19] SET QUERY_STORE = OFF
GO
USE [Casos_covid_19]
GO
/****** Object:  Table [dbo].[registro_covid]    Script Date: 5/2/2020 8:57:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registro_covid](
	[id_caso] [int] NOT NULL,
	[fecha_diagnostico] [nvarchar](10) NULL,
	[ciudad_ubicacion] [nvarchar](20) NULL,
	[departamento] [nvarchar](20) NULL,
	[atencion] [nvarchar](15) NULL,
	[edad] [int] NULL,
	[sexo] [nvarchar](10) NULL,
	[tipo] [nvarchar](30) NULL,
	[pais_procedencia] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registro_covid_espejo]    Script Date: 5/2/2020 8:57:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registro_covid_espejo](
	[id_caso] [int] NOT NULL,
	[fecha_diagnostico] [nvarchar](10) NULL,
	[ciudad_ubicacion] [nvarchar](20) NULL,
	[departamento] [nvarchar](20) NULL,
	[atencion] [nvarchar](15) NULL,
	[edad] [int] NULL,
	[sexo] [nvarchar](10) NULL,
	[tipo] [nvarchar](30) NULL,
	[pais_procedencia] [nvarchar](40) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Casos_covid_19] SET  READ_WRITE 
GO
