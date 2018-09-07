/****** Object:  Table [dbo].[scorecard_ratings]    Script Date: 9/7/2018 1:56:16 PM ******/
DROP TABLE [dbo].[scorecard_ratings]
GO
/****** Object:  Table [dbo].[scorecard_ratings]    Script Date: 9/7/2018 1:56:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
