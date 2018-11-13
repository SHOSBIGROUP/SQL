USE [sho_staging]
GO
/****** Object:  Table [dbo].[Category_Division]    Script Date: 10/26/2018 4:02:29 PM ******/
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
