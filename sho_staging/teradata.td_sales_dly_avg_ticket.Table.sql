USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_avg_ticket]    Script Date: 10/24/2018 4:30:33 PM ******/
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
