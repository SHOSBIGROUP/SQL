USE [sho_staging]
GO
/****** Object:  Table [teradata].[td_sales_dly_markdowns]    Script Date: 10/26/2018 4:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [teradata].[td_sales_dly_markdowns](
	[MKDN_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[DIV_NO] [int] NULL,
	[REG_MDS] [float] NULL,
	[PRO_MDS] [float] NULL,
	[REC_LOAD_DTM] [datetime] NOT NULL
) ON [PRIMARY]
GO
