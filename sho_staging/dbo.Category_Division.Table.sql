USE [sho_staging]
GO
/****** Object:  Table [dbo].[Category_Division]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [dbo].[Category_Division]
GO
/****** Object:  Table [dbo].[Category_Division]    Script Date: 9/11/2018 9:33:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Division](
	[SNL] [int] NOT NULL,
	[CAT_NBR] [int] NOT NULL,
	[CAT_DESC] [nvarchar](50) NOT NULL,
	[VBS_NBR] [int] NOT NULL,
	[VBS_DESC] [nvarchar](50) NOT NULL,
	[DIV_NBR] [int] NOT NULL,
	[DIV_DESC] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
