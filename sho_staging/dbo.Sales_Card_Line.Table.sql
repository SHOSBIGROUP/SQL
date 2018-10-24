USE [sho_staging]
GO
/****** Object:  Table [dbo].[Sales_Card_Line]    Script Date: 10/24/2018 4:30:26 PM ******/
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
