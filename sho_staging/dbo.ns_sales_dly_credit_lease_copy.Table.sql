USE [sho_staging]
GO
/****** Object:  Table [dbo].[ns_sales_dly_credit_lease_copy]    Script Date: 9/11/2018 9:33:57 AM ******/
DROP TABLE [dbo].[ns_sales_dly_credit_lease_copy]
GO
/****** Object:  Table [dbo].[ns_sales_dly_credit_lease_copy]    Script Date: 9/11/2018 9:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ns_sales_dly_credit_lease_copy](
	[Date] [varchar](20) NULL,
	[Store] [varchar](250) NULL,
	[Lease_Sale] [float] NULL,
	[Lease_Units] [int] NULL,
	[Sears_Card_Sales] [float] NULL,
	[Other_Card_Sales] [float] NULL
) ON [PRIMARY]
GO
