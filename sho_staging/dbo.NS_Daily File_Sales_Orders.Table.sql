USE [sho_staging]
GO
/****** Object:  Table [dbo].[NS_Daily File_Sales_Orders]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [dbo].[NS_Daily File_Sales_Orders]
GO
/****** Object:  Table [dbo].[NS_Daily File_Sales_Orders]    Script Date: 10/4/2018 3:53:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NS_Daily File_Sales_Orders](
	[Transaction Date] [nvarchar](50) NULL,
	[Paid Date] [nvarchar](50) NULL,
	[Type] [varchar](500) NULL,
	[Transaction Status] [varchar](500) NULL,
	[Transaction Source] [varchar](500) NULL,
	[Transaction Document Number] [varchar](500) NULL,
	[Accounting Unit] [nvarchar](500) NULL,
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
	[Discription] [nvarchar](500) NULL,
	[Designation] [varchar](500) NULL,
	[SKU#] [varchar](500) NULL,
	[SHO Type] [varchar](500) NULL,
	[Brand] [varchar](500) NULL,
	[Is PA] [varchar](500) NULL,
	[Available PA] [nvarchar](500) NULL,
	[Transaction Source1] [varchar](500) NULL,
	[Bulk Sale Tran] [varchar](500) NULL,
	[Payment Method ] [varchar](500) NULL,
	[Net Amount] [varchar](50) NULL,
	[Qty] [varchar](500) NULL,
	[Avg_Cost] [varchar](50) NULL,
	[List_Price] [varchar](50) NULL,
	[Regular_price] [varchar](50) NULL,
	[cadence 3H] [varchar](500) NULL,
	[Cadence outlet] [varchar](500) NULL,
	[Amount] [varchar](50) NULL,
	[Gross Profit] [varchar](50) NULL,
	[Store Indicator] [varchar](500) NULL,
	[Fulfilment method] [varchar](500) NULL,
	[Fulfilment Selected] [varchar](500) NULL,
	[Customer First Name] [nvarchar](500) NULL,
	[Customer Last Name] [nvarchar](500) NULL,
	[Customer Address_1] [nvarchar](500) NULL,
	[Customer Address_2] [nvarchar](500) NULL,
	[Customer City] [nvarchar](500) NULL,
	[Customer State] [nvarchar](500) NULL,
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
