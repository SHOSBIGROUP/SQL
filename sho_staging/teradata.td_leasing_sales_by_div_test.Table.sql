USE [sho_staging]
GO
ALTER TABLE [teradata].[td_leasing_sales_by_div_test] DROP CONSTRAINT [DF__td_leasin__REC_L__7E37BEF6]
GO
/****** Object:  Table [teradata].[td_leasing_sales_by_div_test]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [teradata].[td_leasing_sales_by_div_test]
GO
/****** Object:  Table [teradata].[td_leasing_sales_by_div_test]    Script Date: 9/11/2018 9:34:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_leasing_sales_by_div_test](
	[LOC_NO] [int] NULL,
	[TRS_DT] [date] NULL,
	[div_no] [int] NULL,
	[lease_sales] [float] NULL,
	[lease_units] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [teradata].[td_leasing_sales_by_div_test] ADD  DEFAULT (getdate()) FOR [REC_LOAD_DTM]
GO
