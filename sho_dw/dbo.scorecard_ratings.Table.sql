USE [sho_dw]
GO
/****** Object:  Table [dbo].[scorecard_ratings]    Script Date: 10/1/2018 10:00:10 AM ******/
DROP TABLE [dbo].[scorecard_ratings]
GO
/****** Object:  Table [dbo].[scorecard_ratings]    Script Date: 10/1/2018 10:00:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scorecard_ratings](
	[location_format] [varchar](50) NOT NULL,
	[metric] [varchar](50) NOT NULL,
	[scale] [int] NOT NULL,
	[threshold] [decimal](6, 4) NOT NULL,
 CONSTRAINT [PK_scorecard_rating_table] PRIMARY KEY CLUSTERED 
(
	[location_format] ASC,
	[metric] ASC,
	[scale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
