USE [sho_staging]
GO
/****** Object:  Table [dbo].[Copy of NS_Daily File_Sales_Orders]    Script Date: 10/24/2018 4:30:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Copy of NS_Daily File_Sales_Orders](
	[Transaction Date] [varchar](500) NULL,
	[Paid Date] [varchar](500) NULL,
	[Type] [varchar](500) NULL,
	[Transaction Status] [varchar](500) NULL,
	[Transaction Source] [varchar](500) NULL,
	[Transaction Document Number] [varchar](500) NULL,
	[Accounting Unit] [varchar](500) NULL,
	[Location format type] [varchar](500) NULL,
	[Store Region] [varchar](500) NULL,
	[Store District] [varchar](500) NULL,
	[Store] [varchar](500) NULL,
	[Location] [varchar](500) NULL,
	[Category] [varchar](500) NULL,
	[Division] [varchar](500) NULL,
	[Line] [varchar](500) NULL,
	[Subline] [varchar](500) NULL,
	[Class] [varchar](500) NULL,
	[Item Name] [varchar](500) NULL,
	[Discription] [varchar](500) NULL,
	[Designation] [varchar](500) NULL,
	[SKU#] [varchar](500) NULL,
	[SHO Type] [varchar](500) NULL,
	[Brand] [varchar](500) NULL,
	[Is PA] [varchar](500) NULL,
	[Available PA] [varchar](500) NULL,
	[Transaction Source1] [varchar](500) NULL,
	[Bulk Sale Tran] [varchar](500) NULL,
	[Payment Method ] [varchar](500) NULL,
	[Net Amount] [float] NULL,
	[Qty] [varchar](500) NULL,
	[Avg  Cost] [float] NULL,
	[List Price] [float] NULL,
	[Regular price] [float] NULL,
	[cadence 3H] [varchar](500) NULL,
	[Cadence outlet] [varchar](500) NULL,
	[Amount] [float] NULL,
	[Gross Profit] [float] NULL,
	[Store Indicator] [varchar](500) NULL,
	[Fulfilment method] [varchar](500) NULL,
	[Fulfilment Selected] [varchar](500) NULL,
	[Customer First Name] [varchar](500) NULL,
	[Customer Last Name] [varchar](500) NULL,
	[Customer Address_1] [varchar](500) NULL,
	[Customer Address_2] [varchar](500) NULL,
	[Customer City] [varchar](500) NULL,
	[Customer State] [varchar](500) NULL,
	[Customer Zip] [varchar](500) NULL,
	[Email] [varchar](500) NULL,
	[Alt  Email] [varchar](500) NULL,
	[Acc Email] [varchar](500) NULL,
	[Shipping Email] [varchar](500) NULL,
	[Phone] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Home Phone ] [varchar](50) NULL
) ON [PRIMARY]
GO
