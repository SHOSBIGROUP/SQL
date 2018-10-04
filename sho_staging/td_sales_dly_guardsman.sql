CREATE TABLE [teradata].[td_sales_dly_guardsman](
	[TRS_DT] [date] NULL,
	[LOC_NO] [int] NULL,
	[DIV_NO] [int] null,
	[NetSales] [float] NULL,
	[UnitsSold] [int] NULL,
	[REC_LOAD_DTM] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [teradata].[td_sales_dly_guardsman] ADD  DEFAULT (getdate()) FOR [REC_LOAD_DTM]
GO