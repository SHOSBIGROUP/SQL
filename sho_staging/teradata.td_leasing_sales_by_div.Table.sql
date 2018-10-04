USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_leasing_sales_by_div]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [teradata].[td_leasing_sales_by_div]
GO
/****** Object:  Table [teradata].[td_leasing_sales_by_div]    Script Date: 10/4/2018 3:53:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_leasing_sales_by_div](
	[LOC_NO] [int] NULL,
	[TRS_DT] [date] NULL,
	[div_no] [int] NULL,
	[lease_sales] [float] NULL,
	[lease_units] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
