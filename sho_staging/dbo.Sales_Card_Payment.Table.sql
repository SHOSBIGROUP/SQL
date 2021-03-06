USE [sho_staging]
GO
/****** Object:  Table [dbo].[Sales_Card_Payment]    Script Date: 10/26/2018 4:02:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Card_Payment](
	[document_nbr] [varchar](15) NULL,
	[payment_amt] [decimal](11, 2) NULL,
	[payment_dt] [datetime] NULL,
	[account_desc] [varchar](150) NULL,
	[payment_type_desc] [varchar](50) NULL,
	[payment_method_desc] [varchar](50) NULL,
	[status_desc] [varchar](25) NULL,
	[internalid] [varchar](15) NULL,
	[created_from] [varchar](50) NULL,
	[other_amt] [varchar](20) NULL,
	[close_dt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Sales_Card_Payment_document_nbr]    Script Date: 10/26/2018 4:02:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Card_Payment_document_nbr] ON [dbo].[Sales_Card_Payment]
(
	[document_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
GO
