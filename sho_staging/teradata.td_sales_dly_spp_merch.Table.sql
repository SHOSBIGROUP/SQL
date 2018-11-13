USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_spp_merch]    Script Date: 10/26/2018 4:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_spp_merch](
	[TRS_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[NetSales] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
