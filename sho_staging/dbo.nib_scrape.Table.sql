USE [sho_staging]
GO
/****** Object:  Table [dbo].[nib_scrape]    Script Date: 10/24/2018 4:30:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nib_scrape](
	[Bucket] [varchar](5) NULL,
	[DivItem] [varchar](9) NULL,
	[Div] [varchar](3) NULL,
	[Item] [varchar](6) NULL,
	[Product Name] [varchar](135) NULL,
	[Item-Desc] [varchar](50) NULL,
	[Reg] [real] NULL,
	[Sale] [real] NULL,
	[Cost] [real] NULL,
	[Price_position] [varchar](6) NULL,
	[Min_Comp] [real] NULL,
	[Abt] [real] NULL,
	[BestBuy] [real] NULL,
	[HomeDepo] [smallint] NULL,
	[Lowes] [smallint] NULL,
	[Sears] [real] NULL
) ON [PRIMARY]
GO
