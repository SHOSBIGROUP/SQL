USE [sho_staging]
GO
ALTER TABLE [teradata].[td_sales_dly_credit_share_test] DROP CONSTRAINT [DF__td_sales___REC_L__05D8E0BE]
GO
/****** Object:  Table [teradata].[td_sales_dly_credit_share_test]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [teradata].[td_sales_dly_credit_share_test]
GO
/****** Object:  Table [teradata].[td_sales_dly_credit_share_test]    Script Date: 9/11/2018 9:34:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_credit_share_test](
	[LOC_NO] [int] NULL,
	[TRS_DT] [date] NULL,
	[SCARDAM] [float] NULL,
	[TOT_MINUS_GC] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [teradata].[td_sales_dly_credit_share_test] ADD  DEFAULT (getdate()) FOR [REC_LOAD_DTM]
GO
