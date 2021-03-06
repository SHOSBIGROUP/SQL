USE [sho_staging]
GO
/****** Object:  Table [dbo].[Sales_Card_Header_Backup_092518]    Script Date: 10/26/2018 4:02:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Card_Header_Backup_092518](
	[document_nbr] [varchar](15) NULL,
	[sales_amt_total] [decimal](11, 2) NULL,
	[transaction_src] [varchar](25) NULL,
	[status_desc] [varchar](25) NULL,
	[store_type_cd] [varchar](3) NULL,
	[location_format] [varchar](15) NULL,
	[internalid] [varchar](15) NULL,
	[rec_create_dt] [datetime] NULL,
	[close_dt] [datetime] NULL
) ON [PRIMARY]
GO
