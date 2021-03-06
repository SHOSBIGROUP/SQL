USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_leasing_sales_by_div]    Script Date: 10/26/2018 4:02:42 PM ******/
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
