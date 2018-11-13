USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_bulk_sales]    Script Date: 10/26/2018 4:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_bulk_sales](
	[LOC_NO] [int] NULL,
	[TRS_DT] [date] NULL,
	[BULK_UNIT] [int] NULL,
	[BULK_SALES] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
