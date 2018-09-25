USE [sho_staging]
GO
/****** Object:  Index [IX_Sales_Card_Header_sales_dt (ASC)]    Script Date: 9/25/2018 11:37:32 AM ******/
DROP INDEX [IX_Sales_Card_Header_sales_dt (ASC)] ON [dbo].[Sales_Card_Header]
GO
/****** Object:  Table [dbo].[Sales_Card_Header]    Script Date: 9/25/2018 11:37:32 AM ******/
DROP TABLE [dbo].[Sales_Card_Header]
GO
/****** Object:  Table [dbo].[Sales_Card_Header]    Script Date: 9/25/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Card_Header](
	[document_nbr] [varchar](15) NOT NULL,
	[sales_amt_total] [decimal](11, 2) NULL,
	[sales_dt] [datetime] NULL,
	[transaction_src] [varchar](25) NULL,
	[status_desc] [varchar](25) NULL,
	[location_type] [varchar](3) NULL,
	[name] [varchar](15) NULL,
	[internalid] [varchar](15) NULL,
	[close_dt] [datetime] NULL,
 CONSTRAINT [PK_Sales_Card_Header_document_nbr] PRIMARY KEY CLUSTERED 
(
	[document_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sales_Card_Header_sales_dt (ASC)]    Script Date: 9/25/2018 11:37:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Card_Header_sales_dt (ASC)] ON [dbo].[Sales_Card_Header]
(
	[sales_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
