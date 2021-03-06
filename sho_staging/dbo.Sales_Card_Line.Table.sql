USE [sho_staging]
GO
/****** Object:  Table [dbo].[Sales_Card_Line]    Script Date: 10/26/2018 4:02:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Card_Line](
	[document_nbr] [varchar](15) NULL,
	[sales_amt] [decimal](11, 2) NULL,
	[sales_dt] [datetime] NULL,
	[transaction_src] [varchar](25) NULL,
	[status_desc] [varchar](25) NULL,
	[item_nbr] [varchar](50) NULL,
	[div_nbr] [char](3) NULL,
	[location_format] [varchar](15) NULL,
	[name] [varchar](15) NULL,
	[internalid] [varchar](15) NULL,
	[promotion] [varchar](50) NULL,
	[promotion_status_applied] [varchar](15) NULL,
	[close_dt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Sales_Card_Line_document_nbr]    Script Date: 10/26/2018 4:02:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Card_Line_document_nbr] ON [dbo].[Sales_Card_Line]
(
	[document_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
