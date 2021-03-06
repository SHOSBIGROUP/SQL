USE [sho_staging]
GO
/****** Object:  Table [dbo].[NS_Daily_File_Sales_Orders_Header]    Script Date: 10/26/2018 4:02:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NS_Daily_File_Sales_Orders_Header](
	[Transaction Date] [nvarchar](50) NULL,
	[Paid Date] [nvarchar](50) NULL,
	[Transaction Type] [varchar](500) NULL,
	[Transaction Status] [varchar](500) NULL,
	[Transaction Source] [varchar](500) NULL,
	[Transaction Document Number] [varchar](500) NULL,
	[Sales Check nummber] [varchar](500) NULL,
	[Accounting Unit] [nvarchar](500) NULL,
	[Accounting Unit (no hierarchy)] [varchar](500) NULL,
	[Location format type] [varchar](500) NULL,
	[Store Region] [varchar](500) NULL,
	[Store District] [varchar](500) NULL,
	[Store] [varchar](500) NULL,
	[Location] [varchar](500) NULL,
	[Subtotal] [varchar](500) NULL,
	[Discount amount] [varchar](500) NULL,
	[Tax total] [varchar](500) NULL,
	[Shipping cost] [varchar](500) NULL,
	[Gift certificate amount] [varchar](500) NULL,
	[Total] [varchar](500) NULL,
	[Amount due] [varchar](500) NULL,
	[Payment or Refund Method] [varchar](500) NULL,
	[Payment Amount] [varchar](500) NULL,
	[Comp Store Flag] [varchar](500) NULL,
	[Customer First Name] [nvarchar](500) NULL,
	[Customer Last Name] [nvarchar](500) NULL,
	[Customer Address_1] [nvarchar](500) NULL,
	[Customer Address_2] [nvarchar](500) NULL,
	[Customer City] [nvarchar](500) NULL,
	[Customer State] [nvarchar](500) NULL,
	[Customer Zip] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Alt  Email] [nvarchar](500) NULL,
	[Acc Email] [nvarchar](500) NULL,
	[Shipping Email] [nvarchar](500) NULL,
	[Phone] [nvarchar](500) NULL,
	[Mobile] [nvarchar](500) NULL,
	[Home Phone] [nvarchar](500) NULL,
	[Promotion] [nvarchar](500) NULL,
	[Applied Promotion] [varchar](500) NULL,
	[SHO_REASON_CODE] [varchar](500) NULL,
	[SHO_POS_READON_CODE_COMMENT ] [varchar](500) NULL
) ON [PRIMARY]
GO
