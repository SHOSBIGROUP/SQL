USE [sho_staging]
GO
/****** Object:  Table [dbo].[NS_Merch_Hierarchy_bk]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [dbo].[NS_Merch_Hierarchy_bk]
GO
/****** Object:  Table [dbo].[NS_Merch_Hierarchy_bk]    Script Date: 9/11/2018 9:34:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NS_Merch_Hierarchy_bk](
	[Date_Created] [datetime2](7) NOT NULL,
	[Inactive] [nvarchar](50) NOT NULL,
	[Item_Brand] [nvarchar](50) NULL,
	[Product_Brand_ID] [nvarchar](1) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[Item_Mfgn_Number] [nvarchar](50) NOT NULL,
	[Item_No] [float] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Category_No] [int] NULL,
	[Category_Name] [nvarchar](50) NULL,
	[Division__] [int] NOT NULL,
	[Div_No] [int] NULL,
	[Div_Name] [nvarchar](50) NULL,
	[Line_No] [int] NULL,
	[Line_Name] [nvarchar](50) NULL,
	[Subline_No] [int] NULL,
	[Subline_Name] [nvarchar](50) NULL,
	[Class_No] [int] NULL,
	[Class_Name] [nvarchar](50) NULL,
	[National_Sell_Price] [nvarchar](50) NULL,
	[Last_Purchase_Price] [nvarchar](1) NULL
) ON [PRIMARY]
GO
