USE [sho_staging]
GO
/****** Object:  Table [dbo].[Sales_Card_Header]    Script Date: 10/24/2018 4:30:25 PM ******/
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
