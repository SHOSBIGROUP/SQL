USE [sho_staging]
GO
/****** Object:  Table [dbo].[Payment_POS_NetSales_LeaseSales_20180919]    Script Date: 10/26/2018 4:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_POS_NetSales_LeaseSales_20180919](
	[SNL] [int] NOT NULL,
	[TRS_DT] [datetime2](7) NOT NULL,
	[loc_no] [int] NOT NULL,
	[REG_NO] [int] NOT NULL,
	[TRS_NO] [int] NOT NULL,
	[Sales_Check_Number] [float] NOT NULL,
	[Pos_Sales_line_items] [int] NOT NULL,
	[Division] [int] NOT NULL,
	[Item] [int] NOT NULL,
	[payment_type_count] [int] NOT NULL,
	[payment_type_desc] [nvarchar](50) NOT NULL,
	[pd_perc] [float] NOT NULL,
	[pos_perc] [float] NOT NULL,
	[payment_line_by_item] [nvarchar](50) NOT NULL,
	[POS_SALES_AMOUNT_BY_Item] [nvarchar](50) NOT NULL,
	[Net_Qty] [int] NOT NULL,
	[lsesales] [nvarchar](50) NOT NULL,
	[LseUnits] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
