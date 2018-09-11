USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_brand_attr]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [teradata].[td_sales_dly_brand_attr]
GO
/****** Object:  Table [teradata].[td_sales_dly_brand_attr]    Script Date: 9/11/2018 9:34:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_brand_attr](
	[TRS_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[DIV_NO] [int] NULL,
	[PRD_CHR_CD] [varchar](500) NULL,
	[PRD_CHR_ATR_CD] [int] NULL,
	[NetSales] [float] NULL,
	[UnitSales] [int] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
