USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_avg_ticket]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [teradata].[td_sales_dly_avg_ticket]
GO
/****** Object:  Table [teradata].[td_sales_dly_avg_ticket]    Script Date: 9/11/2018 9:34:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_avg_ticket](
	[LOC_NO] [int] NULL,
	[TRS_DT] [date] NULL,
	[DIV_NO] [int] NULL,
	[NETSLS] [float] NULL,
	[UNITQTY] [int] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
