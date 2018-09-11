USE [sho_staging]
GO
/****** Object:  Table [netsuite].[ns_sales_dly_credit_lease]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [netsuite].[ns_sales_dly_credit_lease]
GO
/****** Object:  Table [netsuite].[ns_sales_dly_credit_lease]    Script Date: 9/11/2018 9:34:08 AM ******/
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
