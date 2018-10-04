USE [sho_staging]
GO
/****** Object:  Table [yext].[customer_review]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [yext].[customer_review]
GO
/****** Object:  Table [yext].[customer_review]    Script Date: 10/4/2018 3:53:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [yext].[customer_review](
	[Date] [datetime2](7) NOT NULL,
	[ID] [int] NOT NULL,
	[Store_ID] [int] NOT NULL,
	[Folder] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Address_2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ZIP] [int] NOT NULL,
	[Site] [nvarchar](50) NOT NULL,
	[Author_Name] [nvarchar](50) NOT NULL,
	[Review] [nvarchar](2250) NULL,
	[Rating] [int] NULL,
	[URL] [nvarchar](250) NULL,
	[Response] [nvarchar](1000) NULL,
	[Review_Labels] [nvarchar](100) NULL,
	[Transaction_ID] [nvarchar](1) NULL
) ON [PRIMARY]
GO
