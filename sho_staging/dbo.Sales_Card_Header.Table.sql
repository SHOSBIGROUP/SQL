USE [sho_staging]
GO
/****** Object:  Table [dbo].[Sales_Card_Header]    Script Date: 10/26/2018 4:02:36 PM ******/
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
/****** Object:  Index [IX_Sales_Card_Header_sales_dt (ASC)]    Script Date: 10/26/2018 4:02:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Card_Header_sales_dt (ASC)] ON [dbo].[Sales_Card_Header]
(
	[sales_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
