USE [sho_staging]
GO
/****** Object:  Table [dbo].[Merch Hierarchy]    Script Date: 10/26/2018 4:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merch Hierarchy](
	[Date Created] [varchar](50) NULL,
	[Inactive] [varchar](50) NULL,
	[Item Brand] [varchar](50) NULL,
	[Product Brand ID] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[Item Mfgn Number] [varchar](50) NULL,
	[Item No] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[Category No] [varchar](50) NULL,
	[Category Name] [varchar](50) NULL,
	[Division #] [varchar](50) NULL,
	[Div No] [varchar](50) NULL,
	[Div Name] [varchar](50) NULL,
	[Line No] [varchar](50) NULL,
	[Line Name] [varchar](50) NULL,
	[Subline No] [varchar](50) NULL,
	[Subline Name] [varchar](50) NULL,
	[Class No] [varchar](50) NULL,
	[Class Name] [varchar](50) NULL,
	[National Sell Price] [varchar](50) NULL,
	[Last Purchase Price] [varchar](50) NULL
) ON [PRIMARY]
GO
