USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_spp]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [teradata].[td_sales_dly_spp]
GO
/****** Object:  Table [teradata].[td_sales_dly_spp]    Script Date: 9/11/2018 9:34:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_spp](
	[TRS_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[NetSales] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
