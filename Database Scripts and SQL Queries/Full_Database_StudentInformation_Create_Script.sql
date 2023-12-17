USE [master]
GO
/****** Object:  Database [StudentInformation]    Script Date: 12/16/2023 9:42:57 PM ******/
CREATE DATABASE [StudentInformation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentInformation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\StudentInformation.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentInformation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\StudentInformation.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [StudentInformation] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentInformation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentInformation] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [StudentInformation] SET ANSI_NULLS ON 
GO
ALTER DATABASE [StudentInformation] SET ANSI_PADDING ON 
GO
ALTER DATABASE [StudentInformation] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [StudentInformation] SET ARITHABORT ON 
GO
ALTER DATABASE [StudentInformation] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentInformation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentInformation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentInformation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentInformation] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [StudentInformation] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [StudentInformation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentInformation] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [StudentInformation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentInformation] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentInformation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentInformation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentInformation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentInformation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentInformation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentInformation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentInformation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentInformation] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentInformation] SET  MULTI_USER 
GO
ALTER DATABASE [StudentInformation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentInformation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentInformation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentInformation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentInformation] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentInformation] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'StudentInformation', N'ON'
GO
ALTER DATABASE [StudentInformation] SET QUERY_STORE = ON
GO
ALTER DATABASE [StudentInformation] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [StudentInformation]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/16/2023 9:42:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NOT NULL,
	[LecturerName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/16/2023 9:42:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [LecturerName]) VALUES (1, N'Web Development', N'M.M. Herath')
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [LecturerName]) VALUES (2, N'Graphic Design', N'J.S.V. Piyasena')
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [LecturerName]) VALUES (3, N'Mobile App Development', N'K.K.S. Dias')
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [LecturerName]) VALUES (4, N'Java', N'U.H.S. Perera')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [City], [CourseId]) VALUES (1, N'Kasun Gamage', N'Kandy', 2)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [City], [CourseId]) VALUES (2, N'Daniel Sam', N'Jaffna', 3)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [City], [CourseId]) VALUES (3, N'Hansi Silva', N'Colombo', 1)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [City], [CourseId]) VALUES (4, N'Ranidu Heath', N'Matara', 3)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [City], [CourseId]) VALUES (5, N'Praneeth Wijesinghe', N'Kandy', 4)
GO
INSERT [dbo].[Student] ([StudentId], [StudentName], [City], [CourseId]) VALUES (6, N'Nuwani Herath', N'Rathnapura', 1)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Course_CourseId]
GO
USE [master]
GO
ALTER DATABASE [StudentInformation] SET  READ_WRITE 
GO
