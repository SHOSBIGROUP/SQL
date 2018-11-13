USE [sho_staging]
GO
/****** Object:  Table [netsuite].[ns_sales_dly_credit_lease]    Script Date: 10/26/2018 4:02:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[ns_sales_dly_credit_lease](
	[Date] [date] NULL,
	[Store] [int] NULL,
	[Lease_Sale] [float] NULL,
	[Lease_Units] [int] NULL,
	[Sears_Card_Sales] [float] NULL,
	[Other_Card_Sales] [float] NULL
) ON [PRIMARY]
GO
