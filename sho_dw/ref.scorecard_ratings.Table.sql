USE [sho_dw]
GO
/****** Object:  Table [ref].[scorecard_ratings]    Script Date: 11/13/2018 3:54:21 PM ******/
DROP TABLE [ref].[scorecard_ratings]
GO
/****** Object:  Table [ref].[scorecard_ratings]    Script Date: 11/13/2018 3:54:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[scorecard_ratings](
	[location_format] [varchar](50) NOT NULL,
	[metric] [varchar](50) NOT NULL,
	[scale] [int] NOT NULL,
	[threshold] [decimal](6, 4) NOT NULL
) ON [PRIMARY]
GO
