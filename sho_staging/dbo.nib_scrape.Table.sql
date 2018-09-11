USE [sho_staging]
GO
/****** Object:  Table [dbo].[nib_scrape]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [dbo].[nib_scrape]
GO
/****** Object:  Table [dbo].[nib_scrape]    Script Date: 9/11/2018 9:34:00 AM ******/
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
