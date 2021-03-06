USE [sho_staging]
GO
/****** Object:  Table [dbo].[NS_Merch_Hierarchy_Err]    Script Date: 10/26/2018 4:02:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NS_Merch_Hierarchy_Err](
	[Date_Created] [datetime2](7) NOT NULL,
	[Inactive] [varchar](50) NOT NULL,
	[Item_Brand] [varchar](1000) NULL,
	[Product_Brand_ID] [nvarchar](50) NULL,
	[Manufacturer] [varchar](500) NULL,
	[Item_Mfgn_Number] [varchar](200) NOT NULL,
	[Item_No] [float] NOT NULL,
	[Description] [varchar](500) NULL,
	[Category_No] [int] NULL,
	[Category_Name] [varchar](500) NULL,
	[Division__] [int] NOT NULL,
	[Div_No] [int] NULL,
	[Div_Name] [varchar](500) NULL,
	[Line_No] [int] NULL,
	[Line_Name] [varchar](500) NULL,
	[Subline_No] [int] NULL,
	[Subline_Name] [varchar](500) NULL,
	[Class_No] [int] NULL,
	[Class_Name] [varchar](500) NULL,
	[National_Sell_Price] [varchar](50) NULL,
	[Last_Purchase_Price] [varchar](50) NULL,
	[ErrCode] [varchar](50) NULL,
	[ErrNum] [varchar](50) NULL
) ON [PRIMARY]
GO
