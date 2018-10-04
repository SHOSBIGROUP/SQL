USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_leasing_sales_by_div_item]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [teradata].[td_leasing_sales_by_div_item]
GO
/****** Object:  Table [teradata].[td_leasing_sales_by_div_item]    Script Date: 10/4/2018 3:53:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_leasing_sales_by_div_item](
	[LOC_NO] [int] NOT NULL,
	[TRS_DT] [date] NOT NULL,
	[div_no] [int] NOT NULL,
	[PRD_ITM_NO] [int] NOT NULL,
	[LseSales] [float] NOT NULL,
	[LseUnits] [int] NOT NULL
) ON [PRIMARY]
GO
