USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_lease_sales]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [teradata].[td_sales_dly_lease_sales]
GO
/****** Object:  Table [teradata].[td_sales_dly_lease_sales]    Script Date: 9/11/2018 9:34:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_lease_sales](
	[LOC_NO] [int] NULL,
	[TRS_DT] [date] NULL,
	[DIV_NO] [int] NULL,
	[LSESALES] [float] NULL,
	[LSEUNITS] [int] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
