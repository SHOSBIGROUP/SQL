USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_credit_share]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [teradata].[td_sales_dly_credit_share]
GO
/****** Object:  Table [teradata].[td_sales_dly_credit_share]    Script Date: 10/4/2018 3:53:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_credit_share](
	[LOC_NO] [int] NULL,
	[TRS_DT] [date] NULL,
	[SCARDAM] [float] NULL,
	[TOT_MINUS_GC] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
