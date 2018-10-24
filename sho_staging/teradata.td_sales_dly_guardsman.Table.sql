USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_guardsman]    Script Date: 10/24/2018 4:30:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_guardsman](
	[TRS_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[DIV_NO] [int] NULL,
	[NetSales] [float] NULL,
	[UnitsSold] [int] NULL,
	[REC_LOAD_DTM] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [teradata].[td_sales_dly_guardsman] ADD  DEFAULT (getdate()) FOR [REC_LOAD_DTM]
GO
