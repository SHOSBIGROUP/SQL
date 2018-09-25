USE [sho_staging]
GO
/****** Object:  Index [IX_Sales_Card_Line_document_nbr]    Script Date: 9/25/2018 11:37:32 AM ******/
DROP INDEX [IX_Sales_Card_Line_document_nbr] ON [dbo].[Sales_Card_Line]
GO
/****** Object:  Table [dbo].[Sales_Card_Line]    Script Date: 9/25/2018 11:37:32 AM ******/
DROP TABLE [dbo].[Sales_Card_Line]
GO
/****** Object:  Table [dbo].[Sales_Card_Line]    Script Date: 9/25/2018 11:37:32 AM ******/
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
/****** Object:  Index [IX_Sales_Card_Line_document_nbr]    Script Date: 9/25/2018 11:37:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Card_Line_document_nbr] ON [dbo].[Sales_Card_Line]
(
	[document_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
