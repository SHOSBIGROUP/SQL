USE [sho_staging]
GO
/****** Object:  Table [netsuite].[ns_sales_dly_sales]    Script Date: 10/4/2018 3:52:58 PM ******/
DROP TABLE [netsuite].[ns_sales_dly_sales]
GO
/****** Object:  Table [netsuite].[ns_sales_dly_sales]    Script Date: 10/4/2018 3:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [netsuite].[ns_sales_dly_sales](
	[TRS_Date] [date] NULL,
	[Store_Location] [int] NULL,
	[Div_No] [int] NULL,
	[Merchandise_Sales_] [float] NULL,
	[Merchandise_Units] [int] NULL,
	[PA_S_Sold] [float] NULL,
	[PA_Units_Sold] [int] NULL,
	[PAM___Value] [float] NULL,
	[PAM_Units] [int] NULL,
	[SPP_S_Sold] [float] NULL,
	[SPP_Units_Sold] [int] NULL,
	[SPP_Eligible__Value] [float] NULL,
	[SPP_Eligible_Units] [int] NULL,
	[Kenmore_sales] [float] NULL,
	[Kenmore_Units] [int] NULL,
	[Craftsmen_Sales] [float] NULL,
	[Craftsmen_Units] [int] NULL,
	[TMD] [float] NULL,
	[Bulk_Sales] [float] NULL,
	[Bulk_Units] [int] NULL,
	[_3H_Ecom] [float] NULL,
	[_3H_Ecom_Units] [int] NULL,
	[Outlet_Ecom] [float] NULL,
	[Outlet_Ecom_units] [int] NULL,
	[Sears_com] [float] NULL,
	[Sears_com_Units] [int] NULL
) ON [PRIMARY]
GO
