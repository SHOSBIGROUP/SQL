USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_sales_test]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [teradata].[td_sales_dly_sales_test]
GO
/****** Object:  Table [teradata].[td_sales_dly_sales_test]    Script Date: 10/4/2018 3:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_sales_test](
	[TRS_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[DIV_NO] [int] NULL,
	[NETSALES] [float] NULL,
	[NETUNITS] [int] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
