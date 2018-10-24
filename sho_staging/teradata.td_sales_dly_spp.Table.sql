USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_spp]    Script Date: 10/24/2018 4:30:35 PM ******/
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
