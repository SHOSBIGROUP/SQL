USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_pa]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [teradata].[td_sales_dly_pa]
GO
/****** Object:  Table [teradata].[td_sales_dly_pa]    Script Date: 10/4/2018 3:53:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_pa](
	[TRS_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[Div_NO] [int] NULL,
	[NetSales] [float] NULL,
	[PAMUNITS] [int] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
