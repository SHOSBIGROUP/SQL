USE [sho_staging]
GO
ALTER TABLE [teradata].[td_sales_dly_markdowns_test] DROP CONSTRAINT [DF__td_sales___REC_L__09A971A2]
GO
/****** Object:  Table [teradata].[td_sales_dly_markdowns_test]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [teradata].[td_sales_dly_markdowns_test]
GO
/****** Object:  Table [teradata].[td_sales_dly_markdowns_test]    Script Date: 9/11/2018 9:34:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_markdowns_test](
	[MKDN_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[DIV_NO] [int] NULL,
	[REG_MDS] [float] NULL,
	[PRO_MDS] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [teradata].[td_sales_dly_markdowns_test] ADD  DEFAULT (getdate()) FOR [REC_LOAD_DTM]
GO
