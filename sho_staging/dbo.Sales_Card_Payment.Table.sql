USE [sho_staging]
GO
/****** Object:  Table [dbo].[Sales_Card_Payment]    Script Date: 10/24/2018 4:30:26 PM ******/
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
