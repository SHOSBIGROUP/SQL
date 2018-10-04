USE [sho_staging]
GO
/****** Object:  Table [dbo].[ns_sales_dly_credit_lease_copy]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [dbo].[ns_sales_dly_credit_lease_copy]
GO
/****** Object:  Table [dbo].[ns_sales_dly_credit_lease_copy]    Script Date: 10/4/2018 3:53:04 PM ******/
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
